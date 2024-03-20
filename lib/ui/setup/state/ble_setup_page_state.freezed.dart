// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_setup_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BleSetupPageState {
  BleUseCase get bleUseCase => throw _privateConstructorUsedError;
  String get remoteId => throw _privateConstructorUsedError;
  List<BluetoothService> get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BleSetupPageStateCopyWith<BleSetupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleSetupPageStateCopyWith<$Res> {
  factory $BleSetupPageStateCopyWith(
          BleSetupPageState value, $Res Function(BleSetupPageState) then) =
      _$BleSetupPageStateCopyWithImpl<$Res, BleSetupPageState>;
  @useResult
  $Res call(
      {BleUseCase bleUseCase,
      String remoteId,
      List<BluetoothService> services});
}

/// @nodoc
class _$BleSetupPageStateCopyWithImpl<$Res, $Val extends BleSetupPageState>
    implements $BleSetupPageStateCopyWith<$Res> {
  _$BleSetupPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bleUseCase = null,
    Object? remoteId = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      bleUseCase: null == bleUseCase
          ? _value.bleUseCase
          : bleUseCase // ignore: cast_nullable_to_non_nullable
              as BleUseCase,
      remoteId: null == remoteId
          ? _value.remoteId
          : remoteId // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<BluetoothService>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BleSetupPageStateCopyWith<$Res>
    implements $BleSetupPageStateCopyWith<$Res> {
  factory _$$_BleSetupPageStateCopyWith(_$_BleSetupPageState value,
          $Res Function(_$_BleSetupPageState) then) =
      __$$_BleSetupPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BleUseCase bleUseCase,
      String remoteId,
      List<BluetoothService> services});
}

/// @nodoc
class __$$_BleSetupPageStateCopyWithImpl<$Res>
    extends _$BleSetupPageStateCopyWithImpl<$Res, _$_BleSetupPageState>
    implements _$$_BleSetupPageStateCopyWith<$Res> {
  __$$_BleSetupPageStateCopyWithImpl(
      _$_BleSetupPageState _value, $Res Function(_$_BleSetupPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bleUseCase = null,
    Object? remoteId = null,
    Object? services = null,
  }) {
    return _then(_$_BleSetupPageState(
      bleUseCase: null == bleUseCase
          ? _value.bleUseCase
          : bleUseCase // ignore: cast_nullable_to_non_nullable
              as BleUseCase,
      remoteId: null == remoteId
          ? _value.remoteId
          : remoteId // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<BluetoothService>,
    ));
  }
}

/// @nodoc

class _$_BleSetupPageState implements _BleSetupPageState {
  _$_BleSetupPageState(
      {required this.bleUseCase,
      this.remoteId = '',
      final List<BluetoothService> services = const []})
      : _services = services;

  @override
  final BleUseCase bleUseCase;
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

  @override
  String toString() {
    return 'BleSetupPageState(bleUseCase: $bleUseCase, remoteId: $remoteId, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BleSetupPageState &&
            (identical(other.bleUseCase, bleUseCase) ||
                other.bleUseCase == bleUseCase) &&
            (identical(other.remoteId, remoteId) ||
                other.remoteId == remoteId) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bleUseCase, remoteId,
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BleSetupPageStateCopyWith<_$_BleSetupPageState> get copyWith =>
      __$$_BleSetupPageStateCopyWithImpl<_$_BleSetupPageState>(
          this, _$identity);
}

abstract class _BleSetupPageState implements BleSetupPageState {
  factory _BleSetupPageState(
      {required final BleUseCase bleUseCase,
      final String remoteId,
      final List<BluetoothService> services}) = _$_BleSetupPageState;

  @override
  BleUseCase get bleUseCase;
  @override
  String get remoteId;
  @override
  List<BluetoothService> get services;
  @override
  @JsonKey(ignore: true)
  _$$_BleSetupPageStateCopyWith<_$_BleSetupPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
