import 'package:mongo_dart/mongo_dart.dart';

enum MongodbCollections { users, devices, plants }

class MongodbDataSource {
  static final MongodbDataSource _instance = MongodbDataSource._internal();

  factory MongodbDataSource() {
    return _instance;
  }

  MongodbDataSource._internal();

  Db? _db;

  Future connectDatabase() async {
    if (_db != null && _db!.state == State.open && _db!.isConnected) return;

    try {
      _db = await Db.create(
          "mongodb+srv://HarumaIto:Iruma860@cluster.4bsf4hb.mongodb.net/Prect");
      await _db!.open();
    } catch (e) {
      print(e);
      await _db!.close();
    }
  }

  Future disconnectDatabase() async {
    if (_db == null) return;

    await _db!.close();
  }

  Future updateUserToken(String did, String token) async {
    final collection = _db!.collection(MongodbCollections.devices.name);
    try {
      await collection.updateOne(
          where.id(ObjectId.fromHexString(did)), modify.set('token', token));
    } catch (e) {
      print(e);
    }
  }

  Future<WriteResult?> insertDocument(
      String collectionName, Map<String, dynamic> document) async {
    final collection = _db!.collection(collectionName);
    try {
      final result = await collection.insertOne(document);
      return result;
    } catch (e) {
      return null;
    }
  }

  Future findDevice(String deviceId) async {
    final collection = _db!.collection(MongodbCollections.devices.name);
    try {
      final device =
          await collection.findOne(where.id(ObjectId.fromHexString(deviceId)));
      return device;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future deleteDevice(String deviceId) async {
    final collection = _db!.collection(MongodbCollections.devices.name);
    try {
      await collection.deleteOne(where.id(ObjectId.fromHexString(deviceId)));
    } catch (e) {
      print(e);
    }
  }

  // 登録したデバイスにユーザーIDを紐付ける
  Future addUserIdForDevice(
      String collectionName, String deviceId, String userId) async {
    final collection = _db!.collection(collectionName);
    try {
      await collection.updateOne(
        where.id(ObjectId.fromHexString(deviceId)),
        modify.set('hostUserId', userId),
      );
    } catch (e) {
      print(e);
    }
  }

  // devicesのなかから紐づけられたデバイスIDをもとに検索する
  Future<Map<String, dynamic>?> readDeviceByUserId(
      String collectionName, String id) async {
    final collection = _db!.collection(collectionName);
    try {
      final device = await collection.findOne(where.match('hostUserId', id));
      return device;
    } catch (e) {
      print(e);
      return null;
    }
  }

  /*
  Stream<dynamic>? watchDocument(String deviceId) {
    print('mongo db watch data source');
    final collection = _db!.collection(MongodbCollections.devices.name);
    final pipeline = AggregationPipelineBuilder().addStage(
      Match(where.oneFrom('fullDocument._id', [ObjectId.fromHexString(deviceId)]).map['\$query']));
    try {
      final stream = collection.watch(pipeline,
        changeStreamOptions: ChangeStreamOptions(fullDocument: 'updateLookup'));
      return stream;
    } catch (e) {
      return null;
    }
  }
  */
}
