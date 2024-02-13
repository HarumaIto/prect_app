import 'package:prect/data/model/surroundings.dart';
import 'package:prect/domain/location_weather_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prect/data/model/prect_device.dart';
import 'package:prect/domain/device_info_use_case.dart';

// freezedコマンド
/* flutter pub run build_runner build --delete-conflicting-outputs */
part 'main_page_ui_state.freezed.dart';

@freezed
class MainPageUiState with _$MainPageUiState {
  factory MainPageUiState({
    PrectDevice? device,
    Surroundings? surroundings,
  }) = _MainPageUiState;
}

final mainPageUiStateProvider =
    StateNotifierProvider.autoDispose<MainPageStateNotifier, MainPageUiState>(
        (ref) {
  return MainPageStateNotifier(ref);
});

class MainPageStateNotifier extends StateNotifier<MainPageUiState> {
  MainPageStateNotifier(AutoDisposeStateNotifierProviderRef ref)
      : super(MainPageUiState()) {
    loadDevice(ref);
    loadSurroundings(ref);
  }

  Future loadDevice(AutoDisposeStateNotifierProviderRef ref) async {
    final device = await ref.watch(deviceInfoUseCaseProvider.future);
    state = state.copyWith(device: device);
  }

  Future loadSurroundings(AutoDisposeStateNotifierProviderRef ref) async {
    final placeLocationUseCase = ref.watch(fetchLocationWeatherUseCaseProvider);
    final map = await placeLocationUseCase.callMainBody();
    print(map);

    state = state.copyWith(
      surroundings: Surroundings(
        placeLocation: map['placeLocation'],
        weather: map['weather'],
      ),
    );
  }
}
