import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/data/model/spiffs_data.dart';
import 'package:prect/domain/ble_use_case.dart';

//dart run build_runner build

part 'ble_setup_page_state.freezed.dart';

@freezed
class BleSetupPageState with _$BleSetupPageState {
  factory BleSetupPageState({
    required BleUseCase bleUseCase,
    required SpiffsData spiffsData,
    @Default('') String remoteId,
    @Default([]) List<BluetoothService> services,
  }) = _BleSetupPageState;
}

class BleSetupPageNotifier extends StateNotifier<BleSetupPageState> {
  BleSetupPageNotifier(BleUseCase bleUseCase, SpiffsData spiffsData)
      : super(BleSetupPageState(
          spiffsData: spiffsData,
          bleUseCase: bleUseCase,
        ));

  void setBleDevice(String remoteId, List<BluetoothService> services) {
    state = state.copyWith(
      remoteId: remoteId,
      services: services,
    );
  }

  // Bluetoothのcharacteristicsをそのまま渡す
  void setSpiffsData(String readValue) {
    final splits = readValue.split(',');
    final spiffsData = SpiffsData(
      deviceId: splits[0],
      wifiSsid: splits[1],
      wifiPassword: splits[2],
      sleepTime: splits[3].isNotEmpty ? int.parse(splits[3]) : 0,
    );
    state = state.copyWith(spiffsData: spiffsData);
  }
}

final bleSetupPageProvider =
    StateNotifierProvider.autoDispose<BleSetupPageNotifier, BleSetupPageState>(
  (ref) {
    final bleUseCase = ref.watch(bleUseCaseProvider);
    return BleSetupPageNotifier(bleUseCase, SpiffsData());
  },
);
