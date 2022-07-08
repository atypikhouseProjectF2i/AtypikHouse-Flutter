import 'package:atypik_house_flutter/screens/login.dart';
import 'package:go_router/go_router.dart';

class Routing {
  static GoRouter getRoutes() {
    return GoRouter(routes: [
      GoRoute(
          path: '/',
          name: 'login',
          builder: (context, state) => LoginPage(title: "Login")),
    ]);
  }
}
