import 'package:permission_handler/permission_handler.dart';

class PermissionUtil {
  static Future<bool> locationRequest() async {
    return await Permission.location.request().isGranted;
  }

  static Future<bool> notificationRequest() async {
    return await Permission.notification.request().isGranted;
  }
}
