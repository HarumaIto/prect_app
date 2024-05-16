// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetupPageState {
  int get activeStep => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetupPageStateCopyWith<SetupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupPageStateCopyWith<$Res> {
  factory $SetupPageStateCopyWith(
          SetupPageState value, $Res Function(SetupPageState) then) =
      _$SetupPageStateCopyWithImpl<$Res, SetupPageState>;
  @useResult
  $Res call({int activeStep});
}

/// @nodoc
class _$SetupPageStateCopyWithImpl<$Res, $Val extends SetupPageState>
    implements $SetupPageStateCopyWith<$Res> {
  _$SetupPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeStep = null,
  }) {
    return _then(_value.copyWith(
      activeStep: null == activeStep
          ? _value.activeStep
          : activeStep // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetupPageStateCopyWith<$Res>
    implements $SetupPageStateCopyWith<$Res> {
  factory _$$_SetupPageStateCopyWith(
          _$_SetupPageState value, $Res Function(_$_SetupPageState) then) =
      __$$_SetupPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int activeStep});
}

/// @nodoc
class __$$_SetupPageStateCopyWithImpl<$Res>
    extends _$SetupPageStateCopyWithImpl<$Res, _$_SetupPageState>
    implements _$$_SetupPageStateCopyWith<$Res> {
  __$$_SetupPageStateCopyWithImpl(
      _$_SetupPageState _value, $Res Function(_$_SetupPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeStep = null,
  }) {
    return _then(_$_SetupPageState(
      activeStep: null == activeStep
          ? _value.activeStep
          : activeStep // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetupPageState implements _SetupPageState {
  _$_SetupPageState({this.activeStep = 0});

  @override
  @JsonKey()
  final int activeStep;

  @override
  String toString() {
    return 'SetupPageState(activeStep: $activeStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetupPageState &&
            (identical(other.activeStep, activeStep) ||
                other.activeStep == activeStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetupPageStateCopyWith<_$_SetupPageState> get copyWith =>
      __$$_SetupPageStateCopyWithImpl<_$_SetupPageState>(this, _$identity);
}

abstract class _SetupPageState implements SetupPageState {
  factory _SetupPageState({final int activeStep}) = _$_SetupPageState;

  @override
  int get activeStep;
  @override
  @JsonKey(ignore: true)
  _$$_SetupPageStateCopyWith<_$_SetupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
