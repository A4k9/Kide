import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kide/pages/Contacts.dart';
import 'package:kide/pages/Events.dart';
import 'package:kide/pages/SubEvents.dart';
import 'package:kide/pages/Home.dart';
import 'package:kide/pages/Maps.dart';
import 'package:kide/pages/More.dart';
import 'package:kide/providers/router.dart';
import 'package:kide/widgets/BottomNav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Router(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: MyHomePage(title: 'KIDE'),
        routes: {
          SubEvents.routeName: (context) => SubEvents()
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex=2;

  final List<Widget> _tabs = [
    MapsPage(),
    ContactsPage(),
    HomePage(),
    EventsPage(),
    MorePage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    
    final indexState = Provider.of<Router>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Roboto',
          ),
          )),
      ),
      backgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
      body: _tabs[indexState.bottomNavIndex],
      bottomNavigationBar: BottomNav(),
    );
  }
}
