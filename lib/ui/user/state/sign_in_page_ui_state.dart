import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prect/domain/authentication_use_case.dart';

part 'sign_in_page_ui_state.freezed.dart';

@freezed
class SignInPageUiState with _$SignInPageUiState {
  factory SignInPageUiState({
    required AuthenticationUseCase authenticationUseCase,
    @Default('') String email,
    @Default('') String password,
    @Default(true) bool obscure,
  }) = _SignInPageUiState;
}

final signInPageUiStateProvider = StateNotifierProvider
    .autoDispose<SignInPageStateNotifier, SignInPageUiState>((ref) {
  final authenticationUseCase = ref.watch(authenticationUseCaseProvider);
  return SignInPageStateNotifier(authenticationUseCase);
});

class SignInPageStateNotifier extends StateNotifier<SignInPageUiState> {
  SignInPageStateNotifier(AuthenticationUseCase useCase)
      : super(SignInPageUiState(authenticationUseCase: useCase));

  set email(String email) {
    state = state.copyWith(email: email);
  }

  set password(String password) {
    state = state.copyWith(password: password);
  }

  set obscure(bool obscure) {
    state = state.copyWith(obscure: obscure);
  }

  Future logIn() async {
    await state.authenticationUseCase.onLogIn(
        state.email,
        state.password
    );
  }

  Future updateFCMToken() async {
    await state.authenticationUseCase.updateFCMToken();
  }
}