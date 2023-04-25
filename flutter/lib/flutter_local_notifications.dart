import 'package:evapp/routes.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

Future initLocalNotification() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('ic_launcher');
  // final DarwinInitializationSettings initializationSettingsDarwin =
  // DarwinInitializationSettings(
  //     onDidReceiveLocalNotification: onDidReceiveLocalNotification);
  final InitializationSettings initializationSettings =
      const InitializationSettings(android: initializationSettingsAndroid);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
  flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
}

void onDidReceiveNotificationResponse(NotificationResponse notificationResponse) async {
  router.routerDelegate.navigatorKey.currentContext!.goNamed(Routes.home);
}

Future showNotification(String body) async {
  AndroidNotificationDetails androidNotificationDetails = const AndroidNotificationDetails(
      '123456', 'android',
      importance: Importance.max, priority: Priority.high);
  NotificationDetails notificationDetails =
      NotificationDetails(android: androidNotificationDetails);
  await flutterLocalNotificationsPlugin.show(body.hashCode, 'Weather warning!', body, notificationDetails);
}
