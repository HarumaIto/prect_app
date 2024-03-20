// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BleDevice {
  String get remoteId => throw _privateConstructorUsedError;
  List<BluetoothService> get services => throw _privateConstructorUsedError;
  List<BluetoothCharacteristic> get characteristics =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BleDeviceCopyWith<BleDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleDeviceCopyWith<$Res> {
  factory $BleDeviceCopyWith(BleDevice value, $Res Function(BleDevice) then) =
      _$BleDeviceCopyWithImpl<$Res, BleDevice>;
  @useResult
  $Res call(
      {String remoteId,
      List<BluetoothService> services,
      List<BluetoothCharacteristic> characteristics});
}

/// @nodoc
class _$BleDeviceCopyWithImpl<$Res, $Val extends BleDevice>
    implements $BleDeviceCopyWith<$Res> {
  _$BleDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteId = null,
    Object? services = null,
    Object? characteristics = null,
  }) {
    return _then(_value.copyWith(
      remoteId: null == remoteId
          ? _value.remoteId
          : remoteId // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<BluetoothService>,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<BluetoothCharacteristic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BleDeviceCopyWith<$Res> implements $BleDeviceCopyWith<$Res> {
  factory _$$_BleDeviceCopyWith(
          _$_BleDevice value, $Res Function(_$_BleDevice) then) =
      __$$_BleDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String remoteId,
      List<BluetoothService> services,
      List<BluetoothCharacteristic> characteristics});
}

/// @nodoc
class __$$_BleDeviceCopyWithImpl<$Res>
    extends _$BleDeviceCopyWithImpl<$Res, _$_BleDevice>
    implements _$$_BleDeviceCopyWith<$Res> {
  __$$_BleDeviceCopyWithImpl(
      _$_BleDevice _value, $Res Function(_$_BleDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteId = null,
    Object? services = null,
    Object? characteristics = null,
  }) {
    return _then(_$_BleDevice(
      remoteId: null == remoteId
          ? _value.remoteId
          : remoteId // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<BluetoothService>,
      characteristics: null == characteristics
          ? _value._characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<BluetoothCharacteristic>,
    ));
  }
}

/// @nodoc

class _$_BleDevice implements _BleDevice {
  _$_BleDevice(
      {this.remoteId = '',
      final List<BluetoothService> services = const [],
      final List<BluetoothCharacteristic> characteristics = const []})
      : _services = services,
        _characteristics = characteristics;

  @override
  @JsonKey()
  final String remoteId;
  final List<BluetoothService> _services;
  @override
  @JsonKey()
  List<BluetoothService> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final List<BluetoothCharacteristic> _characteristics;
  @override
  @JsonKey()
  List<BluetoothCharacteristic> get characteristics {
    if (_characteristics is EqualUnmodifiableListView) return _characteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characteristics);
  }

  @override
  String toString() {
    return 'BleDevice(remoteId: $remoteId, services: $services, characteristics: $characteristics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BleDevice &&
            (identical(other.remoteId, remoteId) ||
                other.remoteId == remoteId) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality()
                .equals(other._characteristics, _characteristics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      remoteId,
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_characteristics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BleDeviceCopyWith<_$_BleDevice> get copyWith =>
      __$$_BleDeviceCopyWithImpl<_$_BleDevice>(this, _$identity);
}

abstract class _BleDevice implements BleDevice {
  factory _BleDevice(
      {final String remoteId,
      final List<BluetoothService> services,
      final List<BluetoothCharacteristic> characteristics}) = _$_BleDevice;

  @override
  String get remoteId;
  @override
  List<BluetoothService> get services;
  @override
  List<BluetoothCharacteristic> get characteristics;
  @override
  @JsonKey(ignore: true)
  _$$_BleDeviceCopyWith<_$_BleDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
