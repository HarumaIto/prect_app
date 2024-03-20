import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ble_device.freezed.dart';

@freezed
class BleDevice with _$BleDevice {
  factory BleDevice({
    @Default('') String remoteId,
    @Default([]) List<BluetoothService> services,
    @Default([]) List<BluetoothCharacteristic> characteristics,
  }) = _BleDevice;
}
