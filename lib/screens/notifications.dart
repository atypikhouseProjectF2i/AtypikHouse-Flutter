import 'dart:async';

import 'package:atypik_house_flutter/models/user.dart';
import 'package:atypik_house_flutter/services/user_service.dart';
import 'package:atypik_house_flutter/widgets/appbar_widget.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../services/auth_service.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);
  final String title = "Notifications";
  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  get onDidReceiveLocalNotification => null;
  get selectNotification => null;

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  AndroidInitializationSettings? androidInitializationSettings;
  IOSInitializationSettings? iosInitializationSettings;
  late InitializationSettings initializationSettings;

  @override
  initState() {
    super.initState();

    initNotification();

    // Timer.periodic(const Duration(seconds: 5), (Timer timer) {
    //   showNotification("title tets", "body test");
    // });
  }

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
    return flutterLocalNotificationsPlugin.show(
        0, title, body, notificationDetails);
  }

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: widget.title,
        isNotificationIcon: false,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  showNotification("title tets", "body test");
                  // const snackBar = SnackBar(
                  //   content: Text('Yay! A SnackBar!'),
                  // );
                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text("show notification"))
            // const Text(
            //   'Notif page',
            //   style: TextStyle(
            //     fontSize: 20,
            //     //color: Color.fromARGB(255, 14, 64, 45),
            //     color: Color.fromARGB(255, 0, 0, 0),
            //   ),
            // )
          ],
        ),
      ),
    );
    // );
  }
}
//awesome flutter snippets
//dart data class generator
//guides
//
