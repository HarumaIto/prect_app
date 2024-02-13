import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'setup_page_state.freezed.dart';

@freezed
class SetupPageState with _$SetupPageState {
  factory SetupPageState({
    @Default(0) int activeStep,
  }) = _SetupPageState;
}

final setupPageProvider = StateNotifierProvider
    .autoDispose<SetupPageStateNotifier, SetupPageState>((ref) {
  return SetupPageStateNotifier();
});

class SetupPageStateNotifier extends StateNotifier<SetupPageState> {
  SetupPageStateNotifier() : super(SetupPageState());

  set activeStep(int newValue) {
    state = state.copyWith(
      activeStep: newValue
    );
  }
}