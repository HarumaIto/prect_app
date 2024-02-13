// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingPageState {
  PrectDeviceSettings? get deviceSettings => throw _privateConstructorUsedError;
  Plant? get plant => throw _privateConstructorUsedError;
  Surroundings? get surroundings => throw _privateConstructorUsedError;
  bool get processed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingPageStateCopyWith<SettingPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingPageStateCopyWith<$Res> {
  factory $SettingPageStateCopyWith(
          SettingPageState value, $Res Function(SettingPageState) then) =
      _$SettingPageStateCopyWithImpl<$Res, SettingPageState>;
  @useResult
  $Res call(
      {PrectDeviceSettings? deviceSettings,
      Plant? plant,
      Surroundings? surroundings,
      bool processed});

  $PrectDeviceSettingsCopyWith<$Res>? get deviceSettings;
  $PlantCopyWith<$Res>? get plant;
  $SurroundingsCopyWith<$Res>? get surroundings;
}

/// @nodoc
class _$SettingPageStateCopyWithImpl<$Res, $Val extends SettingPageState>
    implements $SettingPageStateCopyWith<$Res> {
  _$SettingPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceSettings = freezed,
    Object? plant = freezed,
    Object? surroundings = freezed,
    Object? processed = null,
  }) {
    return _then(_value.copyWith(
      deviceSettings: freezed == deviceSettings
          ? _value.deviceSettings
          : deviceSettings // ignore: cast_nullable_to_non_nullable
              as PrectDeviceSettings?,
      plant: freezed == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant?,
      surroundings: freezed == surroundings
          ? _value.surroundings
          : surroundings // ignore: cast_nullable_to_non_nullable
              as Surroundings?,
      processed: null == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrectDeviceSettingsCopyWith<$Res>? get deviceSettings {
    if (_value.deviceSettings == null) {
      return null;
    }

    return $PrectDeviceSettingsCopyWith<$Res>(_value.deviceSettings!, (value) {
      return _then(_value.copyWith(deviceSettings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantCopyWith<$Res>? get plant {
    if (_value.plant == null) {
      return null;
    }

    return $PlantCopyWith<$Res>(_value.plant!, (value) {
      return _then(_value.copyWith(plant: value) as $Val);
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
abstract class _$$_SettingPageStateCopyWith<$Res>
    implements $SettingPageStateCopyWith<$Res> {
  factory _$$_SettingPageStateCopyWith(
          _$_SettingPageState value, $Res Function(_$_SettingPageState) then) =
      __$$_SettingPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PrectDeviceSettings? deviceSettings,
      Plant? plant,
      Surroundings? surroundings,
      bool processed});

  @override
  $PrectDeviceSettingsCopyWith<$Res>? get deviceSettings;
  @override
  $PlantCopyWith<$Res>? get plant;
  @override
  $SurroundingsCopyWith<$Res>? get surroundings;
}

/// @nodoc
class __$$_SettingPageStateCopyWithImpl<$Res>
    extends _$SettingPageStateCopyWithImpl<$Res, _$_SettingPageState>
    implements _$$_SettingPageStateCopyWith<$Res> {
  __$$_SettingPageStateCopyWithImpl(
      _$_SettingPageState _value, $Res Function(_$_SettingPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceSettings = freezed,
    Object? plant = freezed,
    Object? surroundings = freezed,
    Object? processed = null,
  }) {
    return _then(_$_SettingPageState(
      deviceSettings: freezed == deviceSettings
          ? _value.deviceSettings
          : deviceSettings // ignore: cast_nullable_to_non_nullable
              as PrectDeviceSettings?,
      plant: freezed == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant?,
      surroundings: freezed == surroundings
          ? _value.surroundings
          : surroundings // ignore: cast_nullable_to_non_nullable
              as Surroundings?,
      processed: null == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingPageState implements _SettingPageState {
  const _$_SettingPageState(
      {this.deviceSettings,
      this.plant,
      this.surroundings,
      this.processed = false});

  @override
  final PrectDeviceSettings? deviceSettings;
  @override
  final Plant? plant;
  @override
  final Surroundings? surroundings;
  @override
  @JsonKey()
  final bool processed;

  @override
  String toString() {
    return 'SettingPageState(deviceSettings: $deviceSettings, plant: $plant, surroundings: $surroundings, processed: $processed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingPageState &&
            (identical(other.deviceSettings, deviceSettings) ||
                other.deviceSettings == deviceSettings) &&
            (identical(other.plant, plant) || other.plant == plant) &&
            (identical(other.surroundings, surroundings) ||
                other.surroundings == surroundings) &&
            (identical(other.processed, processed) ||
                other.processed == processed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceSettings, plant, surroundings, processed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingPageStateCopyWith<_$_SettingPageState> get copyWith =>
      __$$_SettingPageStateCopyWithImpl<_$_SettingPageState>(this, _$identity);
}

abstract class _SettingPageState implements SettingPageState {
  const factory _SettingPageState(
      {final PrectDeviceSettings? deviceSettings,
      final Plant? plant,
      final Surroundings? surroundings,
      final bool processed}) = _$_SettingPageState;

  @override
  PrectDeviceSettings? get deviceSettings;
  @override
  Plant? get plant;
  @override
  Surroundings? get surroundings;
  @override
  bool get processed;
  @override
  @JsonKey(ignore: true)
  _$$_SettingPageStateCopyWith<_$_SettingPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
