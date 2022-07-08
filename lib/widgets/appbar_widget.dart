import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.all(10),
        child: Image.network("http://localhost:4200/assets/images/logo.png"),
      ),
      title: Text('Atypik House'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications),
          color: Color.fromARGB(255, 14, 64, 45),
          tooltip: 'Notifications',
          onPressed: () {

          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
