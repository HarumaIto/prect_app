// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spiffs_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpiffsData {
  String get deviceId => throw _privateConstructorUsedError;
  String get wifiSsid => throw _privateConstructorUsedError;
  String get wifiPassword => throw _privateConstructorUsedError;
  int get sleepTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpiffsDataCopyWith<SpiffsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpiffsDataCopyWith<$Res> {
  factory $SpiffsDataCopyWith(
          SpiffsData value, $Res Function(SpiffsData) then) =
      _$SpiffsDataCopyWithImpl<$Res, SpiffsData>;
  @useResult
  $Res call(
      {String deviceId, String wifiSsid, String wifiPassword, int sleepTime});
}

/// @nodoc
class _$SpiffsDataCopyWithImpl<$Res, $Val extends SpiffsData>
    implements $SpiffsDataCopyWith<$Res> {
  _$SpiffsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? wifiSsid = null,
    Object? wifiPassword = null,
    Object? sleepTime = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      wifiSsid: null == wifiSsid
          ? _value.wifiSsid
          : wifiSsid // ignore: cast_nullable_to_non_nullable
              as String,
      wifiPassword: null == wifiPassword
          ? _value.wifiPassword
          : wifiPassword // ignore: cast_nullable_to_non_nullable
              as String,
      sleepTime: null == sleepTime
          ? _value.sleepTime
          : sleepTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpiffsDataCopyWith<$Res>
    implements $SpiffsDataCopyWith<$Res> {
  factory _$$_SpiffsDataCopyWith(
          _$_SpiffsData value, $Res Function(_$_SpiffsData) then) =
      __$$_SpiffsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId, String wifiSsid, String wifiPassword, int sleepTime});
}

/// @nodoc
class __$$_SpiffsDataCopyWithImpl<$Res>
    extends _$SpiffsDataCopyWithImpl<$Res, _$_SpiffsData>
    implements _$$_SpiffsDataCopyWith<$Res> {
  __$$_SpiffsDataCopyWithImpl(
      _$_SpiffsData _value, $Res Function(_$_SpiffsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? wifiSsid = null,
    Object? wifiPassword = null,
    Object? sleepTime = null,
  }) {
    return _then(_$_SpiffsData(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      wifiSsid: null == wifiSsid
          ? _value.wifiSsid
          : wifiSsid // ignore: cast_nullable_to_non_nullable
              as String,
      wifiPassword: null == wifiPassword
          ? _value.wifiPassword
          : wifiPassword // ignore: cast_nullable_to_non_nullable
              as String,
      sleepTime: null == sleepTime
          ? _value.sleepTime
          : sleepTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SpiffsData implements _SpiffsData {
  _$_SpiffsData(
      {this.deviceId = '',
      this.wifiSsid = '',
      this.wifiPassword = '',
      this.sleepTime = 0});

  @override
  @JsonKey()
  final String deviceId;
  @override
  @JsonKey()
  final String wifiSsid;
  @override
  @JsonKey()
  final String wifiPassword;
  @override
  @JsonKey()
  final int sleepTime;

  @override
  String toString() {
    return 'SpiffsData(deviceId: $deviceId, wifiSsid: $wifiSsid, wifiPassword: $wifiPassword, sleepTime: $sleepTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpiffsData &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.wifiSsid, wifiSsid) ||
                other.wifiSsid == wifiSsid) &&
            (identical(other.wifiPassword, wifiPassword) ||
                other.wifiPassword == wifiPassword) &&
            (identical(other.sleepTime, sleepTime) ||
                other.sleepTime == sleepTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceId, wifiSsid, wifiPassword, sleepTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpiffsDataCopyWith<_$_SpiffsData> get copyWith =>
      __$$_SpiffsDataCopyWithImpl<_$_SpiffsData>(this, _$identity);
}

abstract class _SpiffsData implements SpiffsData {
  factory _SpiffsData(
      {final String deviceId,
      final String wifiSsid,
      final String wifiPassword,
      final int sleepTime}) = _$_SpiffsData;

  @override
  String get deviceId;
  @override
  String get wifiSsid;
  @override
  String get wifiPassword;
  @override
  int get sleepTime;
  @override
  @JsonKey(ignore: true)
  _$$_SpiffsDataCopyWith<_$_SpiffsData> get copyWith =>
      throw _privateConstructorUsedError;
}
