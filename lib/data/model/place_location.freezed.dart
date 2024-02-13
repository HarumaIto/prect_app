// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceLocation {
  String? get cityName => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceLocationCopyWith<PlaceLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceLocationCopyWith<$Res> {
  factory $PlaceLocationCopyWith(
          PlaceLocation value, $Res Function(PlaceLocation) then) =
      _$PlaceLocationCopyWithImpl<$Res, PlaceLocation>;
  @useResult
  $Res call({String? cityName, double? latitude, double? longitude});
}

/// @nodoc
class _$PlaceLocationCopyWithImpl<$Res, $Val extends PlaceLocation>
    implements $PlaceLocationCopyWith<$Res> {
  _$PlaceLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceLocationCopyWith<$Res>
    implements $PlaceLocationCopyWith<$Res> {
  factory _$$_PlaceLocationCopyWith(
          _$_PlaceLocation value, $Res Function(_$_PlaceLocation) then) =
      __$$_PlaceLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cityName, double? latitude, double? longitude});
}

/// @nodoc
class __$$_PlaceLocationCopyWithImpl<$Res>
    extends _$PlaceLocationCopyWithImpl<$Res, _$_PlaceLocation>
    implements _$$_PlaceLocationCopyWith<$Res> {
  __$$_PlaceLocationCopyWithImpl(
      _$_PlaceLocation _value, $Res Function(_$_PlaceLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_PlaceLocation(
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_PlaceLocation implements _PlaceLocation {
  _$_PlaceLocation(
      {required this.cityName,
      required this.latitude,
      required this.longitude});

  @override
  final String? cityName;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'PlaceLocation(cityName: $cityName, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceLocation &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceLocationCopyWith<_$_PlaceLocation> get copyWith =>
      __$$_PlaceLocationCopyWithImpl<_$_PlaceLocation>(this, _$identity);
}

abstract class _PlaceLocation implements PlaceLocation {
  factory _PlaceLocation(
      {required final String? cityName,
      required final double? latitude,
      required final double? longitude}) = _$_PlaceLocation;

  @override
  String? get cityName;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceLocationCopyWith<_$_PlaceLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
