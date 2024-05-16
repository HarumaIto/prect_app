import 'package:freezed_annotation/freezed_annotation.dart';

part 'prect_device_settings.freezed.dart';

@freezed
class PrectDeviceSettings with _$PrectDeviceSettings {
  factory PrectDeviceSettings({
    @Default('') String newDeviceId,
    @Default('') String wifiSSID,
    @Default('') String wifiPassword,
    @Default(60) int sleepTime,
  }) = _PrectDeviceSettings;
}
