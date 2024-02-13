// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_create_page_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountCreatePageUiState {
  AuthenticationUseCase get authenticationUseCase =>
      throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmationPassword => throw _privateConstructorUsedError;
  bool get obscure => throw _privateConstructorUsedError;
  bool get confirmationObscure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountCreatePageUiStateCopyWith<AccountCreatePageUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCreatePageUiStateCopyWith<$Res> {
  factory $AccountCreatePageUiStateCopyWith(AccountCreatePageUiState value,
          $Res Function(AccountCreatePageUiState) then) =
      _$AccountCreatePageUiStateCopyWithImpl<$Res, AccountCreatePageUiState>;
  @useResult
  $Res call(
      {AuthenticationUseCase authenticationUseCase,
      String email,
      String password,
      String confirmationPassword,
      bool obscure,
      bool confirmationObscure});
}

/// @nodoc
class _$AccountCreatePageUiStateCopyWithImpl<$Res,
        $Val extends AccountCreatePageUiState>
    implements $AccountCreatePageUiStateCopyWith<$Res> {
  _$AccountCreatePageUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationUseCase = null,
    Object? email = null,
    Object? password = null,
    Object? confirmationPassword = null,
    Object? obscure = null,
    Object? confirmationObscure = null,
  }) {
    return _then(_value.copyWith(
      authenticationUseCase: null == authenticationUseCase
          ? _value.authenticationUseCase
          : authenticationUseCase // ignore: cast_nullable_to_non_nullable
              as AuthenticationUseCase,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationPassword: null == confirmationPassword
          ? _value.confirmationPassword
          : confirmationPassword // ignore: cast_nullable_to_non_nullable
              as String,
      obscure: null == obscure
          ? _value.obscure
          : obscure // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmationObscure: null == confirmationObscure
          ? _value.confirmationObscure
          : confirmationObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountCreatePageUiStateCopyWith<$Res>
    implements $AccountCreatePageUiStateCopyWith<$Res> {
  factory _$$_AccountCreatePageUiStateCopyWith(
          _$_AccountCreatePageUiState value,
          $Res Function(_$_AccountCreatePageUiState) then) =
      __$$_AccountCreatePageUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationUseCase authenticationUseCase,
      String email,
      String password,
      String confirmationPassword,
      bool obscure,
      bool confirmationObscure});
}

/// @nodoc
class __$$_AccountCreatePageUiStateCopyWithImpl<$Res>
    extends _$AccountCreatePageUiStateCopyWithImpl<$Res,
        _$_AccountCreatePageUiState>
    implements _$$_AccountCreatePageUiStateCopyWith<$Res> {
  __$$_AccountCreatePageUiStateCopyWithImpl(_$_AccountCreatePageUiState _value,
      $Res Function(_$_AccountCreatePageUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationUseCase = null,
    Object? email = null,
    Object? password = null,
    Object? confirmationPassword = null,
    Object? obscure = null,
    Object? confirmationObscure = null,
  }) {
    return _then(_$_AccountCreatePageUiState(
      authenticationUseCase: null == authenticationUseCase
          ? _value.authenticationUseCase
          : authenticationUseCase // ignore: cast_nullable_to_non_nullable
              as AuthenticationUseCase,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationPassword: null == confirmationPassword
          ? _value.confirmationPassword
          : confirmationPassword // ignore: cast_nullable_to_non_nullable
              as String,
      obscure: null == obscure
          ? _value.obscure
          : obscure // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmationObscure: null == confirmationObscure
          ? _value.confirmationObscure
          : confirmationObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AccountCreatePageUiState implements _AccountCreatePageUiState {
  _$_AccountCreatePageUiState(
      {required this.authenticationUseCase,
      this.email = '',
      this.password = '',
      this.confirmationPassword = '',
      this.obscure = true,
      this.confirmationObscure = true});

  @override
  final AuthenticationUseCase authenticationUseCase;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmationPassword;
  @override
  @JsonKey()
  final bool obscure;
  @override
  @JsonKey()
  final bool confirmationObscure;

  @override
  String toString() {
    return 'AccountCreatePageUiState(authenticationUseCase: $authenticationUseCase, email: $email, password: $password, confirmationPassword: $confirmationPassword, obscure: $obscure, confirmationObscure: $confirmationObscure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountCreatePageUiState &&
            (identical(other.authenticationUseCase, authenticationUseCase) ||
                other.authenticationUseCase == authenticationUseCase) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmationPassword, confirmationPassword) ||
                other.confirmationPassword == confirmationPassword) &&
            (identical(other.obscure, obscure) || other.obscure == obscure) &&
            (identical(other.confirmationObscure, confirmationObscure) ||
                other.confirmationObscure == confirmationObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticationUseCase, email,
      password, confirmationPassword, obscure, confirmationObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountCreatePageUiStateCopyWith<_$_AccountCreatePageUiState>
      get copyWith => __$$_AccountCreatePageUiStateCopyWithImpl<
          _$_AccountCreatePageUiState>(this, _$identity);
}

abstract class _AccountCreatePageUiState implements AccountCreatePageUiState {
  factory _AccountCreatePageUiState(
      {required final AuthenticationUseCase authenticationUseCase,
      final String email,
      final String password,
      final String confirmationPassword,
      final bool obscure,
      final bool confirmationObscure}) = _$_AccountCreatePageUiState;

  @override
  AuthenticationUseCase get authenticationUseCase;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmationPassword;
  @override
  bool get obscure;
  @override
  bool get confirmationObscure;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCreatePageUiStateCopyWith<_$_AccountCreatePageUiState>
      get copyWith => throw _privateConstructorUsedError;
}
