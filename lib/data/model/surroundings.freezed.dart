// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surroundings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Surroundings {
  PlaceLocation get placeLocation => throw _privateConstructorUsedError;
  Weather get weather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurroundingsCopyWith<Surroundings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurroundingsCopyWith<$Res> {
  factory $SurroundingsCopyWith(
          Surroundings value, $Res Function(Surroundings) then) =
      _$SurroundingsCopyWithImpl<$Res, Surroundings>;
  @useResult
  $Res call({PlaceLocation placeLocation, Weather weather});

  $PlaceLocationCopyWith<$Res> get placeLocation;
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$SurroundingsCopyWithImpl<$Res, $Val extends Surroundings>
    implements $SurroundingsCopyWith<$Res> {
  _$SurroundingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeLocation = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      placeLocation: null == placeLocation
          ? _value.placeLocation
          : placeLocation // ignore: cast_nullable_to_non_nullable
              as PlaceLocation,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceLocationCopyWith<$Res> get placeLocation {
    return $PlaceLocationCopyWith<$Res>(_value.placeLocation, (value) {
      return _then(_value.copyWith(placeLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SurroundingsCopyWith<$Res>
    implements $SurroundingsCopyWith<$Res> {
  factory _$$_SurroundingsCopyWith(
          _$_Surroundings value, $Res Function(_$_Surroundings) then) =
      __$$_SurroundingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceLocation placeLocation, Weather weather});

  @override
  $PlaceLocationCopyWith<$Res> get placeLocation;
  @override
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_SurroundingsCopyWithImpl<$Res>
    extends _$SurroundingsCopyWithImpl<$Res, _$_Surroundings>
    implements _$$_SurroundingsCopyWith<$Res> {
  __$$_SurroundingsCopyWithImpl(
      _$_Surroundings _value, $Res Function(_$_Surroundings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeLocation = null,
    Object? weather = null,
  }) {
    return _then(_$_Surroundings(
      placeLocation: null == placeLocation
          ? _value.placeLocation
          : placeLocation // ignore: cast_nullable_to_non_nullable
              as PlaceLocation,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_Surroundings implements _Surroundings {
  _$_Surroundings({required this.placeLocation, required this.weather});

  @override
  final PlaceLocation placeLocation;
  @override
  final Weather weather;

  @override
  String toString() {
    return 'Surroundings(placeLocation: $placeLocation, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Surroundings &&
            (identical(other.placeLocation, placeLocation) ||
                other.placeLocation == placeLocation) &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeLocation, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurroundingsCopyWith<_$_Surroundings> get copyWith =>
      __$$_SurroundingsCopyWithImpl<_$_Surroundings>(this, _$identity);
}

abstract class _Surroundings implements Surroundings {
  factory _Surroundings(
      {required final PlaceLocation placeLocation,
      required final Weather weather}) = _$_Surroundings;

  @override
  PlaceLocation get placeLocation;
  @override
  Weather get weather;
  @override
  @JsonKey(ignore: true)
  _$$_SurroundingsCopyWith<_$_Surroundings> get copyWith =>
      throw _privateConstructorUsedError;
}
