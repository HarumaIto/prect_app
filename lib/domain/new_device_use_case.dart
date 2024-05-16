import 'package:prect/data/model/prect_device_settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prect/data/repository/mongodb_repository.dart';
import 'package:prect/data/repository/preferences_repository.dart';

import 'package:prect/ui/setup/state/device_setup_page_state.dart';

final newDeviceUseCaseProvider = Provider<NewDeviceUseCase>((ref) {
  final prefRepository = ref.watch(preferencesRepositoryProvider);
  final mongodbRepository = ref.watch(mongodbRepositoryProvider);

  return NewDeviceUseCase(
      ref: ref,
      prefRepository: prefRepository,
      mongodbRepository: mongodbRepository);
});

class NewDeviceUseCase {
  NewDeviceUseCase({
    required Ref ref,
    required PreferencesRepository prefRepository,
    required MongodbRepository mongodbRepository,
  })  : _ref = ref,
        _preferencesRepository = prefRepository,
        _mongodbRepository = mongodbRepository;

  final Ref _ref;
  final PreferencesRepository _preferencesRepository;
  final MongodbRepository _mongodbRepository;

  Future disconnect() async {
    await _mongodbRepository.disconnectDatabase();
  }

  void createNewDevice() async {
    final newDeviceId = await _mongodbRepository.createDevice();

    _ref.read(deviceSetupPageProvider.notifier).newDeviceId = newDeviceId!;
  }

  void addUserIdForDevice() async {
    final pageState = _ref.read(deviceSetupPageProvider);
    final deviceId = pageState.newDeviceId;

    await _preferencesRepository.connect();
    final userId = await _preferencesRepository.readUserId();

    await _mongodbRepository.addUserIdForDevice(
      userId: userId,
      deviceId: deviceId,
    );
  }

  Future registerDeviceSettings() async {
    final pageState = _ref.read(deviceSetupPageProvider);
    final deviceSettings = PrectDeviceSettings(
      newDeviceId: pageState.newDeviceId,
      wifiSSID: pageState.wifiSsid,
      wifiPassword: pageState.wifiPassword,
      sleepTime: pageState.sleepTime,
    );

    await _preferencesRepository.connect();
    await _preferencesRepository.writeDeviceSettings(deviceSettings);
  }

  void clearNewDevice(String newDeviceId) async {
    if (newDeviceId.isEmpty) return;

    await _mongodbRepository.deleteDevice(newDeviceId);
  }
}
