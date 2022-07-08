import 'dart:developer';
import 'package:atypik_house_flutter/services/routing.dart';
import 'package:flutter/material.dart';

import 'widgets/appbar_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: Routing.getRoutes().routerDelegate,
      routeInformationParser: Routing.getRoutes().routeInformationParser,
      title: "Atypik House",
      // home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
