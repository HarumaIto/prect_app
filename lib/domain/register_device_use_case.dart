import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/data/model/prect_device_settings.dart';
import 'package:prect/data/model/spiffs_data.dart';
import 'package:prect/data/repository/mongodb_repository.dart';
import 'package:prect/data/repository/preferences_repository.dart';
import 'package:prect/ui/setup/state/ble_setup_page_state.dart';

final registerDeviceUseCaseProvider = Provider<RegisterDeviceUseCase>((ref) =>
    RegisterDeviceUseCase(
        ref: ref,
        prefRepository: ref.watch(preferencesRepositoryProvider),
        mongodbRepository: ref.watch(mongodbRepositoryProvider)));

class RegisterDeviceUseCase {
  RegisterDeviceUseCase({
    required this.ref,
    required this.prefRepository,
    required this.mongodbRepository,
  });

  final Ref ref;
  final PreferencesRepository prefRepository;
  final MongodbRepository mongodbRepository;

  Future disconnect() async {
    await mongodbRepository.disconnectDatabase();
  }

  void createNewDevice() async {
    final newDeviceId = await mongodbRepository.createDevice();

    ref.read(bleSetupPageProvider.notifier).updateSpiffsData(
          SpiffsData(deviceId: newDeviceId!),
        );
  }

  void addUserIdForDevice(String deviceId) async {
    await prefRepository.connect();
    final userId = await prefRepository.readUserId();

    await mongodbRepository.addUserIdForDevice(
      userId: userId,
      deviceId: deviceId,
    );
  }

  Future registerDeviceSettings(final pageState) async {
    await prefRepository.connect();
    await prefRepository.writeDeviceSettings(PrectDeviceSettings(
      newDeviceId: pageState.spiffsData.deviceId,
      wifiSSID: pageState.spiffsData.wifiSsid,
      wifiPassword: pageState.spiffsData.wifiPassword,
      sleepTime: pageState.spiffsData.sleepTime,
    ));
  }

  void clearNewDevice(String newDeviceId) async {
    if (newDeviceId.isEmpty) return;

    await mongodbRepository.deleteDevice(newDeviceId);
  }
}
