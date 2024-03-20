// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_page_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInPageUiState {
  AuthenticationUseCase get authenticationUseCase =>
      throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get obscure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInPageUiStateCopyWith<SignInPageUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInPageUiStateCopyWith<$Res> {
  factory $SignInPageUiStateCopyWith(
          SignInPageUiState value, $Res Function(SignInPageUiState) then) =
      _$SignInPageUiStateCopyWithImpl<$Res, SignInPageUiState>;
  @useResult
  $Res call(
      {AuthenticationUseCase authenticationUseCase,
      String email,
      String password,
      bool obscure});
}

/// @nodoc
class _$SignInPageUiStateCopyWithImpl<$Res, $Val extends SignInPageUiState>
    implements $SignInPageUiStateCopyWith<$Res> {
  _$SignInPageUiStateCopyWithImpl(this._value, this._then);

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
    Object? obscure = null,
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
      obscure: null == obscure
          ? _value.obscure
          : obscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInPageUiStateCopyWith<$Res>
    implements $SignInPageUiStateCopyWith<$Res> {
  factory _$$_SignInPageUiStateCopyWith(_$_SignInPageUiState value,
          $Res Function(_$_SignInPageUiState) then) =
      __$$_SignInPageUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationUseCase authenticationUseCase,
      String email,
      String password,
      bool obscure});
}

/// @nodoc
class __$$_SignInPageUiStateCopyWithImpl<$Res>
    extends _$SignInPageUiStateCopyWithImpl<$Res, _$_SignInPageUiState>
    implements _$$_SignInPageUiStateCopyWith<$Res> {
  __$$_SignInPageUiStateCopyWithImpl(
      _$_SignInPageUiState _value, $Res Function(_$_SignInPageUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationUseCase = null,
    Object? email = null,
    Object? password = null,
    Object? obscure = null,
  }) {
    return _then(_$_SignInPageUiState(
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
      obscure: null == obscure
          ? _value.obscure
          : obscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInPageUiState implements _SignInPageUiState {
  _$_SignInPageUiState(
      {required this.authenticationUseCase,
      this.email = '',
      this.password = '',
      this.obscure = true});

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
  final bool obscure;

  @override
  String toString() {
    return 'SignInPageUiState(authenticationUseCase: $authenticationUseCase, email: $email, password: $password, obscure: $obscure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInPageUiState &&
            (identical(other.authenticationUseCase, authenticationUseCase) ||
                other.authenticationUseCase == authenticationUseCase) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.obscure, obscure) || other.obscure == obscure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authenticationUseCase, email, password, obscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInPageUiStateCopyWith<_$_SignInPageUiState> get copyWith =>
      __$$_SignInPageUiStateCopyWithImpl<_$_SignInPageUiState>(
          this, _$identity);
}

abstract class _SignInPageUiState implements SignInPageUiState {
  factory _SignInPageUiState(
      {required final AuthenticationUseCase authenticationUseCase,
      final String email,
      final String password,
      final bool obscure}) = _$_SignInPageUiState;

  @override
  AuthenticationUseCase get authenticationUseCase;
  @override
  String get email;
  @override
  String get password;
  @override
  bool get obscure;
  @override
  @JsonKey(ignore: true)
  _$$_SignInPageUiStateCopyWith<_$_SignInPageUiState> get copyWith =>
      throw _privateConstructorUsedError;
}
