// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageUiState {
  PrectDevice? get device => throw _privateConstructorUsedError;
  Surroundings? get surroundings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageUiStateCopyWith<MainPageUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageUiStateCopyWith<$Res> {
  factory $MainPageUiStateCopyWith(
          MainPageUiState value, $Res Function(MainPageUiState) then) =
      _$MainPageUiStateCopyWithImpl<$Res, MainPageUiState>;
  @useResult
  $Res call({PrectDevice? device, Surroundings? surroundings});

  $PrectDeviceCopyWith<$Res>? get device;
  $SurroundingsCopyWith<$Res>? get surroundings;
}

/// @nodoc
class _$MainPageUiStateCopyWithImpl<$Res, $Val extends MainPageUiState>
    implements $MainPageUiStateCopyWith<$Res> {
  _$MainPageUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = freezed,
    Object? surroundings = freezed,
  }) {
    return _then(_value.copyWith(
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as PrectDevice?,
      surroundings: freezed == surroundings
          ? _value.surroundings
          : surroundings // ignore: cast_nullable_to_non_nullable
              as Surroundings?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrectDeviceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $PrectDeviceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SurroundingsCopyWith<$Res>? get surroundings {
    if (_value.surroundings == null) {
      return null;
    }

    return $SurroundingsCopyWith<$Res>(_value.surroundings!, (value) {
      return _then(_value.copyWith(surroundings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MainPageUiStateCopyWith<$Res>
    implements $MainPageUiStateCopyWith<$Res> {
  factory _$$_MainPageUiStateCopyWith(
          _$_MainPageUiState value, $Res Function(_$_MainPageUiState) then) =
      __$$_MainPageUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrectDevice? device, Surroundings? surroundings});

  @override
  $PrectDeviceCopyWith<$Res>? get device;
  @override
  $SurroundingsCopyWith<$Res>? get surroundings;
}

/// @nodoc
class __$$_MainPageUiStateCopyWithImpl<$Res>
    extends _$MainPageUiStateCopyWithImpl<$Res, _$_MainPageUiState>
    implements _$$_MainPageUiStateCopyWith<$Res> {
  __$$_MainPageUiStateCopyWithImpl(
      _$_MainPageUiState _value, $Res Function(_$_MainPageUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = freezed,
    Object? surroundings = freezed,
  }) {
    return _then(_$_MainPageUiState(
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as PrectDevice?,
      surroundings: freezed == surroundings
          ? _value.surroundings
          : surroundings // ignore: cast_nullable_to_non_nullable
              as Surroundings?,
    ));
  }
}

/// @nodoc

class _$_MainPageUiState implements _MainPageUiState {
  _$_MainPageUiState({this.device, this.surroundings});

  @override
  final PrectDevice? device;
  @override
  final Surroundings? surroundings;

  @override
  String toString() {
    return 'MainPageUiState(device: $device, surroundings: $surroundings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPageUiState &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.surroundings, surroundings) ||
                other.surroundings == surroundings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device, surroundings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPageUiStateCopyWith<_$_MainPageUiState> get copyWith =>
      __$$_MainPageUiStateCopyWithImpl<_$_MainPageUiState>(this, _$identity);
}

abstract class _MainPageUiState implements MainPageUiState {
  factory _MainPageUiState(
      {final PrectDevice? device,
      final Surroundings? surroundings}) = _$_MainPageUiState;

  @override
  PrectDevice? get device;
  @override
  Surroundings? get surroundings;
  @override
  @JsonKey(ignore: true)
  _$$_MainPageUiStateCopyWith<_$_MainPageUiState> get copyWith =>
      throw _privateConstructorUsedError;
}
