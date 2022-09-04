import 'package:atypik_house_flutter/models/accommodation.dart';
import 'package:atypik_house_flutter/models/user.dart';
import 'package:atypik_house_flutter/services/user_service.dart';
import 'package:atypik_house_flutter/widgets/appbar_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../services/auth_service.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key? key, Accommodation? this.accommodation}) : super(key: key);
  final String title = "Details";
  var accommodation;
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWidget(title: widget.title),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(
                  'https://dsp-devo20-ecs-yl-am-ee.fr/api/public//images/accommodations/bulle-62d97f3e27370367616176.jpg'),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Nom de l'hébergement : ${widget.accommodation.name}",
                style: const TextStyle(
                  fontSize: 18,
                  //color: Color.fromARGB(255, 14, 64, 45),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Statut : ",
                style: TextStyle(
                  fontSize: 18,
                  //color: Color.fromARGB(255, 14, 64, 45),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Date de début : ",
                style: TextStyle(
                  fontSize: 18,
                  //color: Color.fromARGB(255, 14, 64, 45),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Date de fin : ",
                style: TextStyle(
                  fontSize: 18,
                  //color: Color.fromARGB(255, 14, 64, 45),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
