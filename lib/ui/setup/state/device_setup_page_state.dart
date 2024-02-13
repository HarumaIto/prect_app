import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prect/domain/ap_connection_use_case.dart';
import 'package:prect/domain/new_device_use_case.dart';
import 'package:prect/domain/ssid_use_case.dart';

// freezedコマンド
/* flutter pub run build_runner build --delete-conflicting-outputs */
part 'device_setup_page_state.freezed.dart';

@freezed
class DeviceSetupPageState with _$DeviceSetupPageState {
  factory DeviceSetupPageState({
    required NewDeviceUseCase newDeviceUseCase,
    required SsidUseCase ssidUseCase,
    required ApConnectionUseCase apConnectionUseCase,
    @Default(0) int index,
    @Default(0) int connectivity,
    @Default('') String newDeviceId,
    @Default('') String wifiSsid,
    @Default('') String wifiPassword,
    @Default(60) int sleepTime,
  }) = _DeviceSetupPageState;
}

final deviceSetupPageProvider = StateNotifierProvider.autoDispose<
    DeviceSetupPageNotifier, DeviceSetupPageState>((ref) {
  final newDeviceUseCase = ref.watch(newDeviceUseCaseProvider);
  final ssidUseCase = ref.watch(ssidUseCaseProvider);
  final apConnectionUseCase = ref.watch(apConnectionUseCaseProvider);
  return DeviceSetupPageNotifier(
      newDeviceUseCase, ssidUseCase, apConnectionUseCase);
});

class DeviceSetupPageNotifier extends StateNotifier<DeviceSetupPageState> {
  DeviceSetupPageNotifier(NewDeviceUseCase newDeviceUseCase,
      SsidUseCase ssidUseCase, ApConnectionUseCase apConnectionUseCase)
      : super(DeviceSetupPageState(
          newDeviceUseCase: newDeviceUseCase,
          ssidUseCase: ssidUseCase,
          apConnectionUseCase: apConnectionUseCase,
        ));

  set index(int index) {
    state = state.copyWith(index: index);
  }

  set connectivity(int status) {
    state = state.copyWith(connectivity: status);
  }

  set newDeviceId(String deviceId) {
    state = state.copyWith(newDeviceId: deviceId);
  }

  set sleepTime(int time) {
    state = state.copyWith(sleepTime: time);
  }

  set wifiSsid(String ssid) {
    state = state.copyWith(wifiSsid: ssid);
  }

  void setRegisteredData(
    String wifiSsid,
    String wifiPassword,
    int sleepTime,
  ) {
    state = state.copyWith(
        wifiSsid: wifiSsid, wifiPassword: wifiPassword, sleepTime: sleepTime);
  }

  void reset() {
    state = state.copyWith(
      index: 0,
    );
  }
}
