import 'package:flutter/material.dart';

import '../components/buttons/floating_button.dart';
import '../components/tweet.dart';
import '../components/drawer/drawer_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[Tweet()],
      ),
      drawer: DrawerPage(),
      floatingActionButton: FloatingButtn(Icons.create),
    );
  }
}
