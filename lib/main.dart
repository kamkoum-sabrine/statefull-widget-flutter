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
  String _displaytext = "face";

  String _textHome = "Home page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite_border_outlined),
            onPressed: onPressedIconButton,
          ),
        ],
      ),
      body: Center(
        child: Text(
          _textHome,
          style: TextStyle(fontSize: 24, color: Colors.pink),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: favoritePage,
        child: const Icon(Icons.favorite_border_outlined),
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
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.pink[800],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void onPressedIconButton() {}

  void favoritePage() {}
}
