import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/data/model/ble_device.dart';
import 'package:prect/domain/ble_use_case.dart';

//dart run build_runner build

part 'ble_setup_page_state.freezed.dart';

@freezed
class BleSetupPageState with _$BleSetupPageState {
  factory BleSetupPageState({
    required BleUseCase bleUseCase,
    required BleDevice bleDevice,
  }) = _BleSetupPageState;
}

class BleSetupPageNotifier extends StateNotifier<BleSetupPageState> {
  BleSetupPageNotifier(BleUseCase bleUseCase, BleDevice bleDevice)
      : super(BleSetupPageState(bleUseCase: bleUseCase, bleDevice: bleDevice));
}

final bleSetupPageProvider =
    StateNotifierProvider.autoDispose<BleSetupPageNotifier, BleSetupPageState>(
  (ref) {
    final bleUseCase = ref.watch(bleUseCaseProvider);
    return BleSetupPageNotifier(bleUseCase, BleDevice());
  },
);
