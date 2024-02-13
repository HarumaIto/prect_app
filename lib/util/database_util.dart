/// アプリで使用するデータとデータベースで使用するデータを変換する
class DatabaseUtil {
  static List<Map> logChildren = [];

  static Future<List<Map>?> getUserLogData([int? limit]) async {
    List children = [];
    // デバイスが初期化されてない場合はデータがないからnullを返す
    if (children == null) return null;

    // 取得するデータの最大値が指定されていなければ、すべてのデータを取得する
    limit ??= children.length;
    logChildren = _convertMapToSnapshot(limit, children);
    return logChildren;
  }

  static List<Map> _convertMapToSnapshot(int limit, List children) {
    List<Map> list = [];
    for (int i = children.length - limit; i < children.length; i++) {
      // {Temperature: 0, Moisture: 0, Humidity: 0, Ts: 0}
    }
    return list;
  }

  static Future<List> getContent({List<Map>? children, int? limit}) async {
    // 新規にデータを取得する場合
    if (logChildren.isEmpty) {
      await getUserLogData(limit);
    }
    children ??= logChildren;

    List list = [];
    for (int i = 0; i < children.length; i++) {}
    return list;
  }

  static DateTime getDateForTimestamp(int index) {
    return DateTime.fromMillisecondsSinceEpoch(
        // Jsonデータがdouble形式だから、一度doubleに変換しないとエラーが起きる
        logChildren[index][''].toDouble().toInt());
  }
}
