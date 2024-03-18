import 'package:shared_preferences/shared_preferences.dart';

enum PrefType { BOOLEAN, STRING, INTEGER, DOUBLE }

enum PrefKey {
  // 登録済みか
  REGISTERED(type: PrefType.BOOLEAN, initialValue: false),
  // メールアドレス
  EMAIL(type: PrefType.STRING, initialValue: ''),
  // MongodbのID
  USER_ID(type: PrefType.STRING, initialValue: ''),
  DEVICE_ID(type: PrefType.STRING, initialValue: ''),
  // location
  CITY_NAME(type: PrefType.STRING, initialValue: ''),
  LATITUDE(type: PrefType.DOUBLE, initialValue: 0.0),
  LONGITUDE(type: PrefType.DOUBLE, initialValue: 0.0),
  // デバイス設定
  WIFI_SSID(type: PrefType.STRING, initialValue: ''),
  WIFI_PASSWORD(type: PrefType.STRING, initialValue: ''),
  SLEEP_TIME(type: PrefType.INTEGER, initialValue: 60),
  // 植物
  PLANT_NAME(type: PrefType.STRING, initialValue: ''),
  PLANT_TYPE(type: PrefType.STRING, initialValue: '');

  const PrefKey({required this.type, required this.initialValue});

  final PrefType type;
  final dynamic initialValue;
}

class PreferencesDataSource {
  late SharedPreferences _preferences;

  Future connect() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future clear() async {
    await _preferences.clear();
  }

  Future<bool> readBool(PrefKey key) async {
    return await _preferences.getBool(key.name)!;
  }

  Future writeBool(PrefKey key, bool value) async {
    await _preferences.setBool(key.name, value);
  }

  Future<String> readString(PrefKey key) async {
    return await _preferences.getString(key.name) ?? '';
  }

  Future writeString(PrefKey key, String value) async {
    await _preferences.setString(key.name, value);
  }

  Future<int> readInt(PrefKey key) async {
    return await _preferences.getInt(key.name) ?? 0;
  }

  Future writeInt(PrefKey key, int value) async {
    await _preferences.setInt(key.name, value);
  }

  Future<double> readDouble(PrefKey key) async {
    return await _preferences.getDouble(key.name) ?? 0.0;
  }

  Future writeDouble(PrefKey key, double value) async {
    await _preferences.setDouble(key.name, value);
  }
}
