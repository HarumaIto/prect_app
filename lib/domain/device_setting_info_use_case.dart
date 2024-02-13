import 'package:prect/data/repository/preferences_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deviceSettingInfoUseCaseProvider = Provider<DeviceSettingInfoUseCase>((ref) {
  final preferencesRepository = ref.watch(preferencesRepositoryProvider);

  return DeviceSettingInfoUseCase(preferencesRepository: preferencesRepository);
});

class DeviceSettingInfoUseCase {
  DeviceSettingInfoUseCase({
    required PreferencesRepository preferencesRepository,
  }) : _preferencesRepository = preferencesRepository;

  final PreferencesRepository _preferencesRepository;

  Future call() async {
    await _preferencesRepository.connect();
    return _preferencesRepository.readDeviceSettings();
  }
}