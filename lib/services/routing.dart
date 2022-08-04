import 'package:atypik_house_flutter/screens/details.dart';
import 'package:atypik_house_flutter/screens/history.dart';
import 'package:atypik_house_flutter/screens/login.dart';
import 'package:atypik_house_flutter/screens/profile.dart';
import 'package:go_router/go_router.dart';

import '../screens/notifications.dart';

class Routing {
  static GoRouter getRoutes() {
    return GoRouter(routes: [
      GoRoute(
          path: '/', name: 'login', builder: (context, state) => LoginPage()),
      GoRoute(
          path: '/history',
          name: 'history',
          builder: (context, state) => HistoryPage()),
      GoRoute(
          path: '/profile',
          name: 'profile',
          builder: (context, state) => ProfilePage()),
      GoRoute(
          path: '/notifications',
          name: 'notifications',
          builder: (context, state) => NotificationsPage()),
      GoRoute(
          path: '/details',
          name: 'details',
          builder: (context, state) => DetailsPage()),
    ]);
  }
}
