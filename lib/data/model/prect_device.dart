import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mongo_dart/mongo_dart.dart';

part 'prect_device.freezed.dart';

enum DevicesDocumentKey {
  _id,
  moisture,
  temperature,
  humidity,
  solar,
  battery,
  time,
}

@freezed
class PrectDevice with _$PrectDevice {
  factory PrectDevice({
    @Default('') String id,
    @Default(0.00) double moisture,
    @Default(0.00) double temperature,
    @Default(0.00) double humidity,
    @Default(0.00) double solar,
    @Default(0.00) double battery,
    @Default('') String time
  }) = _PrectDevice;

  static PrectDevice toPrectDevice(Map<String, dynamic> json) {
    return PrectDevice(
      id: (json[DevicesDocumentKey._id.name] as ObjectId).toHexString(),
      moisture: json[DevicesDocumentKey.moisture.name],
      temperature: json[DevicesDocumentKey.temperature.name],
      humidity: json[DevicesDocumentKey.humidity.name],
      solar: json[DevicesDocumentKey.solar.name],
      battery: json[DevicesDocumentKey.battery.name],
      time: json[DevicesDocumentKey.time.name]
    );
  }
}