import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// freezedコマンド
/* flutter pub run build_runner build --delete-conflicting-outputs */
part 'plant_setup_page_state.freezed.dart';

@freezed
class PlantSetupPageState with _$PlantSetupPageState {
  factory PlantSetupPageState({
    @Default(0) int index,
  }) = _PlantSetupPageState;
}

final plantSetupPageProvider = StateNotifierProvider.autoDispose<
    PlantSetupPageNotifier, PlantSetupPageState>((ref) {
  return PlantSetupPageNotifier();
});

class PlantSetupPageNotifier extends StateNotifier<PlantSetupPageState> {
  PlantSetupPageNotifier() : super(PlantSetupPageState());

  set index(int index) {
    state = state.copyWith(index: index);
  }
}
