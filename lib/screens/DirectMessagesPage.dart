import 'package:flutter/material.dart';
import 'package:flutter_tut/components/buttons/floating_button.dart';

import '../components/drawer/drawer_page.dart';

class DirectMessageView extends StatefulWidget {
  @override
  _DirectMessageViewState createState() => _DirectMessageViewState();
}

class _DirectMessageViewState extends State<DirectMessageView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'Messages',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      drawer: DrawerPage(),
      body: Center(
        child: Icon(Icons.inbox, size: 100, color: Colors.orange),
      ),
      floatingActionButton: FloatingButtn(Icons.add),
    );
  }
}
