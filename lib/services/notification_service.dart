import 'dart:convert';
import 'dart:developer';
import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  NotificationService._();
  static final instance = NotificationService._();
  get onDidReceiveLocalNotification => null;
  get selectNotification => null;

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  AndroidInitializationSettings? androidInitializationSettings;
  IOSInitializationSettings? iosInitializationSettings;
  late InitializationSettings initializationSettings;

  Future initNotification() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    androidInitializationSettings = AndroidInitializationSettings('app_icon');
    iosInitializationSettings = IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    initializationSettings = InitializationSettings(
        android: androidInitializationSettings, iOS: iosInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future showNotification(String title, String body) {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails("CHANNEL", "CHANNEL_NAME");
    IOSNotificationDetails iosNotificationDetails = IOSNotificationDetails();
    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails, iOS: iosNotificationDetails);
    // random pour l'id
    Random random = new Random();
    int randomNumber = random.nextInt(1000) + 1; // from 10 upto 99 included
    return flutterLocalNotificationsPlugin.show(
        randomNumber, title, body, notificationDetails);
  }
}
