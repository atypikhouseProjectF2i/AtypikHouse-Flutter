import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/profile.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {Key? key,
      required this.title,
      this.isBackButton = true,
      this.isProfileIcon = true,
      this.isNotificationIcon = true})
      : super(key: key);

  final String title;
  final bool isBackButton;
  final bool isProfileIcon;
  final bool isNotificationIcon;

  Widget selectLeadingWidget(context) {
    if (isBackButton) {
      // return Text("<Back", style: TextStyle(color: Colors.black));

      return IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        color: const Color.fromARGB(255, 14, 64, 45),
        onPressed: () {
          GoRouter.of(context).pop();
          // context.pop();
        },
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.network(
            "https://dsp-devo20-ecs-yl-am-ee.fr/assets/images/logo.png"),
      );
    }
  }

  Widget showProfileIcon(context) {
    if (isProfileIcon) {
      return IconButton(
        icon: const Icon(Icons.person),
        color: const Color.fromARGB(255, 14, 64, 45),
        tooltip: 'Profile',
        onPressed: () {
          if (ModalRoute.of(context)?.settings.name != "history") {
            GoRouter.of(context).pop();
          }
          GoRouter.of(context).push("/profile");
        },
      );
    } else {
      return const Text('');
    }
  }

  Widget showNotificationIcon(context) {
    if (isNotificationIcon) {
      // notification active color
      // color = Color.fromARGB(255, 103, 148, 54);
      return IconButton(
        icon: const Icon(Icons.notifications),
        color: const Color.fromARGB(255, 14, 64, 45),
        tooltip: 'Notifications',
        onPressed: () {
          if (ModalRoute.of(context)?.settings.name != "history") {
            GoRouter.of(context).pop();
          }
          GoRouter.of(context).push("/notifications");
        },
      );
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: selectLeadingWidget(context),
      title: Text(title, style: const TextStyle(color: Colors.black)),
      actions: <Widget>[
        // IconButton(
        //   icon: const Icon(Icons.notifications),
        //   color: Color.fromARGB(255, 14, 64, 45),
        //   tooltip: 'Notifications',
        //   onPressed: () {},
        // ),
        showNotificationIcon(context),
        showProfileIcon(context),
        // IconButton(
        //   icon: const Icon(Icons.person),
        //   color: Color.fromARGB(255, 14, 64, 45),
        //   tooltip: 'Profile',
        //   onPressed: () {
        //     context.push("/profile");
        //   },
        // ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
