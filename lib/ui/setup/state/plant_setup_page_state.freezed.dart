// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_setup_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlantSetupPageState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantSetupPageStateCopyWith<PlantSetupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantSetupPageStateCopyWith<$Res> {
  factory $PlantSetupPageStateCopyWith(
          PlantSetupPageState value, $Res Function(PlantSetupPageState) then) =
      _$PlantSetupPageStateCopyWithImpl<$Res, PlantSetupPageState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$PlantSetupPageStateCopyWithImpl<$Res, $Val extends PlantSetupPageState>
    implements $PlantSetupPageStateCopyWith<$Res> {
  _$PlantSetupPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlantSetupPageStateCopyWith<$Res>
    implements $PlantSetupPageStateCopyWith<$Res> {
  factory _$$_PlantSetupPageStateCopyWith(_$_PlantSetupPageState value,
          $Res Function(_$_PlantSetupPageState) then) =
      __$$_PlantSetupPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_PlantSetupPageStateCopyWithImpl<$Res>
    extends _$PlantSetupPageStateCopyWithImpl<$Res, _$_PlantSetupPageState>
    implements _$$_PlantSetupPageStateCopyWith<$Res> {
  __$$_PlantSetupPageStateCopyWithImpl(_$_PlantSetupPageState _value,
      $Res Function(_$_PlantSetupPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_PlantSetupPageState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlantSetupPageState implements _PlantSetupPageState {
  _$_PlantSetupPageState({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'PlantSetupPageState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlantSetupPageState &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantSetupPageStateCopyWith<_$_PlantSetupPageState> get copyWith =>
      __$$_PlantSetupPageStateCopyWithImpl<_$_PlantSetupPageState>(
          this, _$identity);
}

abstract class _PlantSetupPageState implements PlantSetupPageState {
  factory _PlantSetupPageState({final int index}) = _$_PlantSetupPageState;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_PlantSetupPageStateCopyWith<_$_PlantSetupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
