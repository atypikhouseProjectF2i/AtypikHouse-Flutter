import 'package:atypik_house_flutter/widgets/appbar_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../models/accommodation.dart';
import '../services/accommodation_service.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);
  final String title = "Historique";

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<Accommodation> _accommodations = [];

  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      final requestResult =
          await AccommodationService.instance.getAccommodations();

      setState(() {
        _accommodations = requestResult;
      });
    });
  }

  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;
  int _selectedIndex = 0;
  /*
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Prop',
    ),
    Text(
      'Index 1: Loc',
    ),
  ];
*/
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: widget.title,
        isBackButton: false,
      ),
      body: Container(child: listWidget()),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.real_estate_agent),
            label: 'Propriétaire',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.night_shelter),
            label: 'Locataire',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 103, 148, 54),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  listWidget() {
    if (_selectedIndex == 0) {
      // if (true == true) {
      //   return Center(child: Text("Vous n'êtes pas propriétaire !"));
      // }
      return ListView.builder(
        itemCount: _accommodations.length,
        itemBuilder: (context, index) {
          final accommodation = _accommodations[index];

          return ListTile(
            onTap: () => {context.push('/details')},
            contentPadding: const EdgeInsets.all(10),
            //contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            leading: Image.network(
                'https://dsp-devo20-ecs-yl-am-ee.fr/api/public//images/accommodations/bulle-62d97f3e27370367616176.jpg'),
            title: Text(accommodation.name),
            subtitle: const Text("EN COURS",
                style: TextStyle(
                    color: Color.fromARGB(255, 103, 148, 54),
                    fontWeight: FontWeight.bold,
                    fontSize: 12)),
            // subtitle: const Text("A VENIR",
            //     style:  TextStyle(
            //         color: Color.fromARGB(255, 39, 108, 255),
            //         fontWeight: FontWeight.bold,
            //         fontSize: 12)),
            // subtitle: const Text("TERMINÉE",
            //     style:  TextStyle(
            //         color: Color.fromARGB(255, 122, 122, 123),
            //         fontWeight: FontWeight.bold,
            //         fontSize: 12)),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      );
    } else if (_selectedIndex == 1) {
      if (true == true) {
        return const Center(child: Text("Vous n'êtes pas locataire !"));
      }

      // if (_accommodations.isEmpty)
      //   return Center(
      //     child: CircularProgressIndicator(),
      //   );

      return ListView.builder(
        itemCount: _accommodations.length,
        itemBuilder: (context, index) {
          final accommodation = _accommodations[index];

          return ListTile(
            onTap: () => {},
            contentPadding: const EdgeInsets.all(10),
            //contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            leading:
                Image.network('https://source.unsplash.com/random/300×150'),
            title: Text(accommodation.name),
            subtitle: Text(accommodation.price.toString(),
                style: const TextStyle(
                    color: Color.fromARGB(255, 103, 148, 54),
                    fontWeight: FontWeight.bold)),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      );

      // return ListView(
      //   shrinkWrap: true,
      //   children: [
      //     ListTile(
      //       onTap: () => {},
      //       contentPadding: EdgeInsets.all(10),
      //       //contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      //       leading:
      //           Image.network("https://source.unsplash.com/random/300×150"),
      //       title: Text('titre hébergement'),
      //       subtitle: Text('en cours',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 103, 148, 54),
      //               fontWeight: FontWeight.bold)),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       onTap: () => {},
      //       contentPadding: EdgeInsets.all(10),
      //       //contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      //       leading:
      //           Image.network("https://source.unsplash.com/random/300×150"),
      //       title: Text('titre hébergement'),
      //       subtitle: Text('terminée',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 143, 142, 142),
      //               fontWeight: FontWeight.bold)),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       onTap: () => {},
      //       contentPadding: EdgeInsets.all(10),
      //       //contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      //       leading:
      //           Image.network("https://source.unsplash.com/random/300×150"),
      //       title: Text('titre hébergement'),
      //       subtitle: Text('à venir',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 122, 84, 46),
      //               fontWeight: FontWeight.bold)),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //   ],
      // );
    }
  }
}
