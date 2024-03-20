import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/domain/ble_use_case.dart';

//dart run build_runner build

part 'ble_setup_page_state.freezed.dart';

@freezed
class BleSetupPageState with _$BleSetupPageState {
  factory BleSetupPageState({
    required BleUseCase bleUseCase,
    @Default('') String remoteId,
    @Default([]) List<BluetoothService> services,
  }) = _BleSetupPageState;
}

class BleSetupPageNotifier extends StateNotifier<BleSetupPageState> {
  BleSetupPageNotifier(BleUseCase bleUseCase)
      : super(BleSetupPageState(
          bleUseCase: bleUseCase,
        ));

  void setBleDevice(String remoteId, List<BluetoothService> services) {
    state = state.copyWith(
      remoteId: remoteId,
      services: services,
    );
  }
}

final bleSetupPageProvider =
    StateNotifierProvider.autoDispose<BleSetupPageNotifier, BleSetupPageState>(
  (ref) {
    final bleUseCase = ref.watch(bleUseCaseProvider);
    return BleSetupPageNotifier(bleUseCase);
  },
);
