import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prect/domain/authentication_use_case.dart';

part 'account_create_page_ui_state.freezed.dart';

@freezed
class AccountCreatePageUiState with _$AccountCreatePageUiState {
  factory AccountCreatePageUiState({
    required AuthenticationUseCase authenticationUseCase,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmationPassword,
    @Default(true) bool obscure,
    @Default(true) bool confirmationObscure,
  }) = _AccountCreatePageUiState;
}

final accountCreatePageUiStateProvider = StateNotifierProvider.autoDispose<
    AccountCreatePageStateNotifier, AccountCreatePageUiState>((ref) {
  final authenticationUseCase = ref.watch(authenticationUseCaseProvider);
  return AccountCreatePageStateNotifier(authenticationUseCase);
});

class AccountCreatePageStateNotifier
    extends StateNotifier<AccountCreatePageUiState> {
  AccountCreatePageStateNotifier(AuthenticationUseCase useCase)
      : super(AccountCreatePageUiState(authenticationUseCase: useCase));

  set email(String email) {
    state = state.copyWith(email: email);
  }

  set password(String password) {
    state = state.copyWith(password: password);
  }

  set confirmationPassword(String password) {
    state = state.copyWith(confirmationPassword: password);
  }

  set obscure(bool obscure) {
    state = state.copyWith(obscure: obscure);
  }

  set confirmationObscure(bool obscure) {
    state = state.copyWith(confirmationObscure: obscure);
  }

  Future createAccount() async {
    await state.authenticationUseCase
        .createAccount(state.email, state.password);
  }
}
