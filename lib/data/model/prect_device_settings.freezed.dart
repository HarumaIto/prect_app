// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prect_device_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrectDeviceSettings {
  String get newDeviceId => throw _privateConstructorUsedError;
  String get wifiSSID => throw _privateConstructorUsedError;
  String get wifiPassword => throw _privateConstructorUsedError;
  int get sleepTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrectDeviceSettingsCopyWith<PrectDeviceSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrectDeviceSettingsCopyWith<$Res> {
  factory $PrectDeviceSettingsCopyWith(
          PrectDeviceSettings value, $Res Function(PrectDeviceSettings) then) =
      _$PrectDeviceSettingsCopyWithImpl<$Res, PrectDeviceSettings>;
  @useResult
  $Res call(
      {String newDeviceId,
      String wifiSSID,
      String wifiPassword,
      int sleepTime});
}

/// @nodoc
class _$PrectDeviceSettingsCopyWithImpl<$Res, $Val extends PrectDeviceSettings>
    implements $PrectDeviceSettingsCopyWith<$Res> {
  _$PrectDeviceSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDeviceId = null,
    Object? wifiSSID = null,
    Object? wifiPassword = null,
    Object? sleepTime = null,
  }) {
    return _then(_value.copyWith(
      newDeviceId: null == newDeviceId
          ? _value.newDeviceId
          : newDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      wifiSSID: null == wifiSSID
          ? _value.wifiSSID
          : wifiSSID // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PrectDeviceSettingsCopyWith<$Res>
    implements $PrectDeviceSettingsCopyWith<$Res> {
  factory _$$_PrectDeviceSettingsCopyWith(_$_PrectDeviceSettings value,
          $Res Function(_$_PrectDeviceSettings) then) =
      __$$_PrectDeviceSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String newDeviceId,
      String wifiSSID,
      String wifiPassword,
      int sleepTime});
}

/// @nodoc
class __$$_PrectDeviceSettingsCopyWithImpl<$Res>
    extends _$PrectDeviceSettingsCopyWithImpl<$Res, _$_PrectDeviceSettings>
    implements _$$_PrectDeviceSettingsCopyWith<$Res> {
  __$$_PrectDeviceSettingsCopyWithImpl(_$_PrectDeviceSettings _value,
      $Res Function(_$_PrectDeviceSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDeviceId = null,
    Object? wifiSSID = null,
    Object? wifiPassword = null,
    Object? sleepTime = null,
  }) {
    return _then(_$_PrectDeviceSettings(
      newDeviceId: null == newDeviceId
          ? _value.newDeviceId
          : newDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      wifiSSID: null == wifiSSID
          ? _value.wifiSSID
          : wifiSSID // ignore: cast_nullable_to_non_nullable
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

class _$_PrectDeviceSettings implements _PrectDeviceSettings {
  _$_PrectDeviceSettings(
      {this.newDeviceId = '',
      this.wifiSSID = '',
      this.wifiPassword = '',
      this.sleepTime = 60});

  @override
  @JsonKey()
  final String newDeviceId;
  @override
  @JsonKey()
  final String wifiSSID;
  @override
  @JsonKey()
  final String wifiPassword;
  @override
  @JsonKey()
  final int sleepTime;

  @override
  String toString() {
    return 'PrectDeviceSettings(newDeviceId: $newDeviceId, wifiSSID: $wifiSSID, wifiPassword: $wifiPassword, sleepTime: $sleepTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrectDeviceSettings &&
            (identical(other.newDeviceId, newDeviceId) ||
                other.newDeviceId == newDeviceId) &&
            (identical(other.wifiSSID, wifiSSID) ||
                other.wifiSSID == wifiSSID) &&
            (identical(other.wifiPassword, wifiPassword) ||
                other.wifiPassword == wifiPassword) &&
            (identical(other.sleepTime, sleepTime) ||
                other.sleepTime == sleepTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, newDeviceId, wifiSSID, wifiPassword, sleepTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrectDeviceSettingsCopyWith<_$_PrectDeviceSettings> get copyWith =>
      __$$_PrectDeviceSettingsCopyWithImpl<_$_PrectDeviceSettings>(
          this, _$identity);
}

abstract class _PrectDeviceSettings implements PrectDeviceSettings {
  factory _PrectDeviceSettings(
      {final String newDeviceId,
      final String wifiSSID,
      final String wifiPassword,
      final int sleepTime}) = _$_PrectDeviceSettings;

  @override
  String get newDeviceId;
  @override
  String get wifiSSID;
  @override
  String get wifiPassword;
  @override
  int get sleepTime;
  @override
  @JsonKey(ignore: true)
  _$$_PrectDeviceSettingsCopyWith<_$_PrectDeviceSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
