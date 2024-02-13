// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Plant {
  String get name => throw _privateConstructorUsedError;
  String get plantType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlantCopyWith<Plant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantCopyWith<$Res> {
  factory $PlantCopyWith(Plant value, $Res Function(Plant) then) =
      _$PlantCopyWithImpl<$Res, Plant>;
  @useResult
  $Res call({String name, String plantType});
}

/// @nodoc
class _$PlantCopyWithImpl<$Res, $Val extends Plant>
    implements $PlantCopyWith<$Res> {
  _$PlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? plantType = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      plantType: null == plantType
          ? _value.plantType
          : plantType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlantCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory _$$_PlantCopyWith(_$_Plant value, $Res Function(_$_Plant) then) =
      __$$_PlantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String plantType});
}

/// @nodoc
class __$$_PlantCopyWithImpl<$Res> extends _$PlantCopyWithImpl<$Res, _$_Plant>
    implements _$$_PlantCopyWith<$Res> {
  __$$_PlantCopyWithImpl(_$_Plant _value, $Res Function(_$_Plant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? plantType = null,
  }) {
    return _then(_$_Plant(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      plantType: null == plantType
          ? _value.plantType
          : plantType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Plant implements _Plant {
  _$_Plant({this.name = '', this.plantType = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String plantType;

  @override
  String toString() {
    return 'Plant(name: $name, plantType: $plantType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Plant &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.plantType, plantType) ||
                other.plantType == plantType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, plantType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlantCopyWith<_$_Plant> get copyWith =>
      __$$_PlantCopyWithImpl<_$_Plant>(this, _$identity);
}

abstract class _Plant implements Plant {
  factory _Plant({final String name, final String plantType}) = _$_Plant;

  @override
  String get name;
  @override
  String get plantType;
  @override
  @JsonKey(ignore: true)
  _$$_PlantCopyWith<_$_Plant> get copyWith =>
      throw _privateConstructorUsedError;
}
