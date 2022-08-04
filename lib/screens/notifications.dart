import 'package:atypik_house_flutter/models/user.dart';
import 'package:atypik_house_flutter/services/user_service.dart';
import 'package:atypik_house_flutter/widgets/appbar_widget.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              const Text(
                'Notif page',
                style: TextStyle(
                  fontSize: 20,
                  //color: Color.fromARGB(255, 14, 64, 45),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
