import 'package:atypik_house_flutter/widgets/appbar_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../services/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginTEC = TextEditingController();
  final passwordTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Image.network(
                    "http://localhost:4200/assets/images/logo.png"),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Connexion',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  //color: Color.fromARGB(255, 14, 64, 45),
                  color: Color.fromARGB(255, 103, 148, 54),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: loginTEC,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Votre email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 103, 148, 54),
                        ),
                        /*border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),*/
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 103, 148, 54),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 103, 148, 54),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordTEC,
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 103, 148, 54),
                        ),
                        hintText: 'Votre mot de passe',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 103, 148, 54),
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 103, 148, 54),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        // final loginResult = await AuthService.instance.login(login: loginTEC.text, password: passwordTEC.text);
                        final loginResult = await AuthService.instance.login(
                            login: "user0@gmail.com", password: "mypassword");
                        if (loginResult) {
                          context.go('/history');
                        } else {
                          // TODO: error message
                        }
                      },
                      /*style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 122, 84, 46)),
                      ),*/
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(
                              255, 122, 84, 46), //background color of button
                          //border width and color
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.fromLTRB(
                              25, 15, 25, 15) //content padding inside button
                          ),
                      child: const Text(
                        'Se Connecter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
