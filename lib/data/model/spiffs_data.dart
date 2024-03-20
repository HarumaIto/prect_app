import 'package:freezed_annotation/freezed_annotation.dart';

part 'spiffs_data.freezed.dart';

@freezed
class SpiffsData with _$SpiffsData {
  factory SpiffsData({
    @Default('') String deviceId,
    @Default('') String wifiSsid,
    @Default('') String wifiPassword,
    @Default(0) int sleepTime,
  }) = _SpiffsData;
}
