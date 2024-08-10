import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {


  static final notification = FlutterLocalNotificationsPlugin();
  static void init() {
    notification.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/launcher_icon'),
      ),
    );
  }


  static void pushNotification(
      {required String title, required String body}) async {
    var androidDetails = const AndroidNotificationDetails(
      'channelId',
      'channelName',
      importance: Importance.high,
      priority: Priority.high,
    );
    var notificationDetails = NotificationDetails(android: androidDetails);

    await notification.show(100, title, body, notificationDetails);
  }
}
