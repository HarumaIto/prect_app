import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/* flutter pub run build_runner build --delete-conflicting-outputs */
part 'surroundings_setup_page_state.freezed.dart';

@freezed
class SurroundingsSetupPageState with _$SurroundingsSetupPageState {
  factory SurroundingsSetupPageState({
    @Default(0) int index,
  }) = _SurroundingsSetupPageState;
}

final surroundingsSetupPageProvider =
    StateNotifierProvider.autoDispose<SurroundingsSetupPageNotifier,
        SurroundingsSetupPageState>((ref) {
  return SurroundingsSetupPageNotifier();
});

class SurroundingsSetupPageNotifier
    extends StateNotifier<SurroundingsSetupPageState> {
  SurroundingsSetupPageNotifier() : super(SurroundingsSetupPageState());

  set index(int index) {
    state = state.copyWith(index: index);
  }
}