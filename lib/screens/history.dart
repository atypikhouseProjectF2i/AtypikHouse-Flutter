import 'package:atypik_house_flutter/widgets/appbar_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Prop',
    ),
    Text(
      'Index 1: Loc',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
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
        selectedItemColor: Color.fromARGB(255, 103, 148, 54),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  listWidget() {
    if (_selectedIndex == 0) {
      if (true == true) {
        return Center(child: Text("Vous n'êtes pas propriétaire !"));
      }
      return ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            onTap: () => {},
            contentPadding: EdgeInsets.all(10),
            //contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            leading:
                Image.network("https://source.unsplash.com/random/300×150"),
            title: Text('titre hébergement'),
            subtitle: Text('terminée'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () => {},
            contentPadding: EdgeInsets.all(10),
            //contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            leading:
                Image.network("https://source.unsplash.com/random/300×150"),
            title: Text('titre hébergement'),
            subtitle: Text('terminée'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      );
    } else if (_selectedIndex == 1) {
      if (false == true) {
        return Center(child: Text("Vous n'êtes pas locataire !"));
      }
      return ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            onTap: () => {},
            contentPadding: EdgeInsets.all(10),
            //contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            leading:
                Image.network("https://source.unsplash.com/random/300×150"),
            title: Text('titre hébergement'),
            subtitle: Text('terminée'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () => {},
            contentPadding: EdgeInsets.all(10),
            //contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            leading:
                Image.network("https://source.unsplash.com/random/300×150"),
            title: Text('titre hébergement'),
            subtitle: Text('terminée'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      );
    }
  }
}
