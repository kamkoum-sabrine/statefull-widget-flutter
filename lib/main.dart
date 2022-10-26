import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: WidgetStatefull(),
    );
  }
}

class WidgetStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WidgetStatefull();
  }
}

class _WidgetStatefull extends State<WidgetStatefull> {
  String _textHome = "Home page";

  bool _outlinedAppBar = true;

  IconData? _iconAppBar = Icons.favorite_outline;

  bool _outlinedActionButton = true;

  IconData? _iconActionButton = Icons.favorite_border_outlined;

  var _selectedIndex = 0;

  bool _homeSelected = false;

  bool _settingsSelected = false;

  bool _accountSelected = false;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home Selected',
    ),
    Text(
      'Settings Selected',
    ),
    Text(
      'Acount Selected',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(_iconAppBar),
            onPressed: onPressedIconButtonAppBar,
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: favoritePage,
        child: Icon(_iconActionButton),
        backgroundColor: Colors.lightBlue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void onPressedIconButtonAppBar() {
    setState(() {
      if (_outlinedAppBar) {
        _outlinedAppBar = false;
        _iconAppBar = Icons.favorite;
      } else {
        _outlinedAppBar = true;
        _iconAppBar = Icons.favorite_border_outlined;
      }
    });
  }

  void favoritePage() {
    setState(() {
      if (_outlinedActionButton) {
        _outlinedActionButton = false;
        _iconActionButton = Icons.favorite;
      } else {
        _outlinedActionButton = true;
        _iconActionButton = Icons.favorite_border_outlined;
      }
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
