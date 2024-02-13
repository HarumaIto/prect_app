// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prect_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrectDevice {
  String get id => throw _privateConstructorUsedError;
  double get moisture => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  double get solar => throw _privateConstructorUsedError;
  double get battery => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrectDeviceCopyWith<PrectDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrectDeviceCopyWith<$Res> {
  factory $PrectDeviceCopyWith(
          PrectDevice value, $Res Function(PrectDevice) then) =
      _$PrectDeviceCopyWithImpl<$Res, PrectDevice>;
  @useResult
  $Res call(
      {String id,
      double moisture,
      double temperature,
      double humidity,
      double solar,
      double battery,
      String time});
}

/// @nodoc
class _$PrectDeviceCopyWithImpl<$Res, $Val extends PrectDevice>
    implements $PrectDeviceCopyWith<$Res> {
  _$PrectDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? moisture = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? solar = null,
    Object? battery = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      moisture: null == moisture
          ? _value.moisture
          : moisture // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      solar: null == solar
          ? _value.solar
          : solar // ignore: cast_nullable_to_non_nullable
              as double,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrectDeviceCopyWith<$Res>
    implements $PrectDeviceCopyWith<$Res> {
  factory _$$_PrectDeviceCopyWith(
          _$_PrectDevice value, $Res Function(_$_PrectDevice) then) =
      __$$_PrectDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double moisture,
      double temperature,
      double humidity,
      double solar,
      double battery,
      String time});
}

/// @nodoc
class __$$_PrectDeviceCopyWithImpl<$Res>
    extends _$PrectDeviceCopyWithImpl<$Res, _$_PrectDevice>
    implements _$$_PrectDeviceCopyWith<$Res> {
  __$$_PrectDeviceCopyWithImpl(
      _$_PrectDevice _value, $Res Function(_$_PrectDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? moisture = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? solar = null,
    Object? battery = null,
    Object? time = null,
  }) {
    return _then(_$_PrectDevice(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      moisture: null == moisture
          ? _value.moisture
          : moisture // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      solar: null == solar
          ? _value.solar
          : solar // ignore: cast_nullable_to_non_nullable
              as double,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PrectDevice implements _PrectDevice {
  _$_PrectDevice(
      {this.id = '',
      this.moisture = 0.00,
      this.temperature = 0.00,
      this.humidity = 0.00,
      this.solar = 0.00,
      this.battery = 0.00,
      this.time = ''});

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final double moisture;
  @override
  @JsonKey()
  final double temperature;
  @override
  @JsonKey()
  final double humidity;
  @override
  @JsonKey()
  final double solar;
  @override
  @JsonKey()
  final double battery;
  @override
  @JsonKey()
  final String time;

  @override
  String toString() {
    return 'PrectDevice(id: $id, moisture: $moisture, temperature: $temperature, humidity: $humidity, solar: $solar, battery: $battery, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrectDevice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.moisture, moisture) ||
                other.moisture == moisture) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.solar, solar) || other.solar == solar) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, moisture, temperature, humidity, solar, battery, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrectDeviceCopyWith<_$_PrectDevice> get copyWith =>
      __$$_PrectDeviceCopyWithImpl<_$_PrectDevice>(this, _$identity);
}

abstract class _PrectDevice implements PrectDevice {
  factory _PrectDevice(
      {final String id,
      final double moisture,
      final double temperature,
      final double humidity,
      final double solar,
      final double battery,
      final String time}) = _$_PrectDevice;

  @override
  String get id;
  @override
  double get moisture;
  @override
  double get temperature;
  @override
  double get humidity;
  @override
  double get solar;
  @override
  double get battery;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$_PrectDeviceCopyWith<_$_PrectDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
