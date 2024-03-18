import 'dart:core';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/data/data_source/mongodb_data_source.dart';
import 'package:realm/realm.dart';

final mongodbRepositoryProvider = Provider<MongodbRepository>((ref) {
  final dataSource = MongodbDataSource();
  return MongodbRepository(dataSource);
});

class MongodbRepository {
  late final AppConfiguration appConfig;
  late final App app;

  late final MongodbDataSource _dataSource;

  MongodbRepository(MongodbDataSource dataSource) {
    appConfig = AppConfiguration('prect-stbsy');
    app = App(appConfig);
    _dataSource = dataSource;
  }

  Future connectDatabase() async {
    await _dataSource.connectDatabase();
  }

  Future disconnectDatabase() async {
    await _dataSource.disconnectDatabase();
  }

  Future<void> createUser(String email, String password) async {
    // ユーザー登録
    EmailPasswordAuthProvider authProvider = EmailPasswordAuthProvider(app);
    await authProvider.registerUser(email, password);
  }

  Future<User> logIn(String email, String password) async {
    // Email方式でログイン
    final emailPwCredentials =
        Credentials.emailPassword('itoharm@gmail.com', 'Haruman860');
    final user = await app.logIn(emailPwCredentials);
    return user;
  }

  Future registerUserData(String did, String token) async {
    await connectDatabase();
    await _dataSource.updateUserToken(did, token);
  }

  Future<String?> createDevice() async {
    await connectDatabase();

    var now = DateTime.now();
    var time =
        '${now.month}/${now.day} ${now.hour}:${now.minute}:${now.second}';

    final result =
        await _dataSource.insertDocument(MongodbCollections.devices.name, {
      'battery': 0.00,
      'humidity': 0.00,
      'moisture': 0.00,
      'solar': 0.00,
      'temperature': 0.00,
      'time': time
    });
    print(result!.id);
    var strId = result.id.toString();
    return strId.split('\"')[1];
  }

  Future deleteDevice(String deviceId) async {
    await connectDatabase();
    await _dataSource.deleteDevice(deviceId);
  }

  Future<void> addUserIdForDevice({
    required String userId,
    required String deviceId,
  }) async {
    await connectDatabase();

    await _dataSource.addUserIdForDevice(
        MongodbCollections.users.name, deviceId, userId);
  }

  // ユーザーIDに紐づいたデバイスがあるか確認用
  Future<String?> readDeviceByUserId(String userId) async {
    await connectDatabase();

    final deviceDocument = await _dataSource.readDeviceByUserId(
        MongodbCollections.devices.name, userId);
    if (deviceDocument == null) {
      return null;
    }
    final objectId = deviceDocument['_id'].toString();
    // ObjectId("") この形で取得

    var id = objectId.split('\"')[1];
    print(id.toString());

    return id;
  }

  // deviceIdがわかっているときにそのドキュメントを読み込む用
  Future<Map<String, dynamic>?> readDeviceDocument(String deviceId) async {
    await connectDatabase();

    final device = await _dataSource.findDevice(deviceId);
    print('found: ${device.toString()}');
    return device;
  }

  /*
  Stream<dynamic>? watchLatestData(String deviceId) {
    return _dataSource.watchDocument(deviceId);
  }
  */
}
