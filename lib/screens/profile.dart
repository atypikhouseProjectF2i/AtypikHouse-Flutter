import 'package:atypik_house_flutter/models/user.dart';
import 'package:atypik_house_flutter/services/user_service.dart';
import 'package:atypik_house_flutter/widgets/appbar_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../services/auth_service.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  final String title = "Profil";
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? _user = null;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final User? user = await UserService.instance.getUser();

      if (user == null) {
        context.go("/history");
        return;
      }
      setState(() {
        _user = user;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWidget(title: widget.title, isProfileIcon: false),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: showProfileData(_user),
        ),
      ),
    );
  }

  Widget showProfileData(data) {
    if (data != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Nom : ${_user?.name}',
            style: const TextStyle(
              fontSize: 20,
              //color: Color.fromARGB(255, 14, 64, 45),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Prénom : ${_user?.firstname}',
            style: const TextStyle(
              fontSize: 20,
              //color: Color.fromARGB(255, 14, 64, 45),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Email : ${_user?.email}',
            style: const TextStyle(
              fontSize: 20,
              //color: Color.fromARGB(255, 14, 64, 45),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: () async {
              final logoutResult = await AuthService.instance.logout();
              if (logoutResult) {
                context.go('/');
              } else {
                // TODO: error message
              }
            },
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(
                    255, 122, 84, 46), //background color of button
                //border width and color
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.fromLTRB(
                    25, 15, 25, 15) //content padding inside button
                ),
            child: const Text(
              'Déconnexion',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
    } else {
      return const CircularProgressIndicator();
    }
  }
}
