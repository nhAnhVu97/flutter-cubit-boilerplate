import 'dart:io';

import 'package:permission_handler/permission_handler.dart';
import 'package:toolkit/toolkit.dart';

class AppPermission {
  static Future<void> requestAppPermission() async {
    await requestAppTransparentPermission();
    await requestNotificationPermission();
  }

  static Future<void> requestAppTransparentPermission() async {
    if (Platform.isIOS) {
      final status = await Permission.appTrackingTransparency.request();
      AppLogger.d('Permission - IOS Transparency -> $status');
    }
  }

  static Future<void> requestNotificationPermission() async {
    final status = await Permission.notification.request();
    AppLogger.d('Permission - Notification -> $status');
  }
}
