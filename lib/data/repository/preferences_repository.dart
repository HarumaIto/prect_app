import 'package:prect/data/model/plant.dart';
import 'package:prect/data/model/prect_device_settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prect/data/data_source/preferences_data_source.dart';
import 'package:prect/data/model/place_location.dart';

final preferencesRepositoryProvider = Provider<PreferencesRepository>((ref) {
  final dataSource = PreferencesDataSource();
  return PreferencesRepository(dataSource);
});

class PreferencesRepository {
  const PreferencesRepository(this._dataSource);

  final PreferencesDataSource _dataSource;

  Future connect() async {
    await _dataSource.connect();
  }

  /** 全体処理 **/
  Future initialization() async {
    await _dataSource.clear();

    for (var key in PrefKey.values) {
      switch (key.type) {
        case PrefType.BOOLEAN:
          {
            _dataSource.writeBool(key, key.initialValue);
            break;
          }
        case PrefType.STRING:
          {
            _dataSource.writeString(key, key.initialValue);
            break;
          }
        case PrefType.INTEGER:
          {
            _dataSource.writeInt(key, key.initialValue);
            break;
          }
        case PrefType.DOUBLE:
          {
            _dataSource.writeDouble(key, key.initialValue);
          }
      }
    }
  }

  /** Read **/
  // 登録済みか
  Future<bool> readRegistered() async =>
      await _dataSource.readBool(PrefKey.REGISTERED);

  // メールアドレス
  Future<String> readEmail() async =>
      await _dataSource.readString(PrefKey.EMAIL);

  // MongodbのID
  Future<String> readUserId() async =>
      await _dataSource.readString(PrefKey.USER_ID);
  Future<String> readDeviceId() async =>
      await _dataSource.readString(PrefKey.DEVICE_ID);

  // location
  Future<PlaceLocation> readPlaceLocation() async {
    final cityName = await _dataSource.readString(PrefKey.CITY_NAME);
    final latitude = await _dataSource.readDouble(PrefKey.LATITUDE);
    final longitude = await _dataSource.readDouble(PrefKey.LONGITUDE);

    return PlaceLocation(
        cityName: cityName, latitude: latitude, longitude: longitude);
  }

  // デバイス設定
  Future<PrectDeviceSettings> readDeviceSettings() async {
    final deviceId = await _dataSource.readString(PrefKey.DEVICE_ID);
    final wifiSsid = await _dataSource.readString(PrefKey.WIFI_SSID);
    final wifiPassword = await _dataSource.readString(PrefKey.WIFI_PASSWORD);
    final sleepTime = await _dataSource.readInt(PrefKey.SLEEP_TIME);

    return PrectDeviceSettings(
        newDeviceId: deviceId,
        wifiSSID: wifiSsid,
        wifiPassword: wifiPassword,
        sleepTime: sleepTime);
  }

  // 植物
  Future<Plant> readPlant() async {
    final name = await _dataSource.readString(PrefKey.PLANT_NAME);
    final type = await _dataSource.readString(PrefKey.PLANT_TYPE);

    return Plant(name: name, plantType: type);
  }

  /** Write **/
  // ユーザー関係
  Future writeUserRegistration(String id, String email) async {
    await _dataSource.writeBool(PrefKey.REGISTERED, true);
    await _dataSource.writeString(PrefKey.USER_ID, id);
    await _dataSource.writeString(PrefKey.EMAIL, email);
  }

  // location
  Future writePlaceLocation(
      String cityName, double latitude, double longitude) async {
    await _dataSource.writeString(PrefKey.CITY_NAME, cityName);
    await _dataSource.writeDouble(PrefKey.LATITUDE, latitude);
    await _dataSource.writeDouble(PrefKey.LONGITUDE, longitude);
  }

  // デバイス設定
  Future writeDeviceSettings(PrectDeviceSettings deviceSettings) async {
    await _dataSource.writeString(
        PrefKey.DEVICE_ID, deviceSettings.newDeviceId);
    await _dataSource.writeString(PrefKey.WIFI_SSID, deviceSettings.wifiSSID);
    await _dataSource.writeString(
        PrefKey.WIFI_PASSWORD, deviceSettings.wifiPassword);
    await _dataSource.writeInt(PrefKey.SLEEP_TIME, deviceSettings.sleepTime);
  }

  // 植物
  Future writePlant(Plant plant) async {
    await _dataSource.writeString(PrefKey.PLANT_NAME, plant.name);
    await _dataSource.writeString(PrefKey.PLANT_TYPE, plant.plantType);
  }
}
