import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prect/data/model/prect_device.dart';
import 'package:prect/data/repository/mongodb_repository.dart';
import 'package:prect/data/repository/preferences_repository.dart';

final deviceInfoUseCaseProvider = StreamProvider<PrectDevice?>((ref) async* {
  final prefRepository = ref.watch(preferencesRepositoryProvider);
  final mongodbRepository = ref.watch(mongodbRepositoryProvider);

  final useCase = DeviceInfoUseCase(
      prefRepository: prefRepository, mongodbRepository: mongodbRepository);

  ref.onDispose(() {
    useCase.disconnect();
  });

  final stream = useCase.call();
  await for (final device in stream) {
    yield device;
  }
});

class DeviceInfoUseCase {
  DeviceInfoUseCase({
    required PreferencesRepository prefRepository,
    required MongodbRepository mongodbRepository,
  })  : _preferencesRepository = prefRepository,
        _mongodbRepository = mongodbRepository;

  final PreferencesRepository _preferencesRepository;
  final MongodbRepository _mongodbRepository;

  void disconnect() {
    _stopStream();
    _mongodbRepository.disconnectDatabase();
  }

  Stream<PrectDevice?> call() async* {
    await _preferencesRepository.connect();
    await _mongodbRepository.connectDatabase();

    var userId = await _preferencesRepository.readUserId();
    var deviceId = await _mongodbRepository.readDeviceByUserId(userId);

    if (deviceId != null) {
      // 一回普通に読み込む
      var document = await _mongodbRepository.readDeviceDocument(deviceId);
      yield PrectDevice.toPrectDevice(document!);

      // Streamで更新を監視する
      /*
      final stream = _mongodbRepository.watchLatestData(deviceId)!;
      await for (final device in stream.map((event) {
        PrectDevice? device;
        if (event != null) {
          Map<String, dynamic> fullDocument = event.fullDocument;
          device = PrectDevice.toPrectDevice(fullDocument);
        }
        print(device);
        return device;
      })) {
        yield device;
      }
      */
    } else {
      yield null;
    }
  }

  void _stopStream() {
    _mongodbRepository.disconnectDatabase();
  }
}
