import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './screens/homepage.dart';
import './screens/DirectMessagesPage.dart';
import './screens/NotificationsPage.dart';
import './screens/SearchPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryIconTheme: IconThemeData(
          color: Colors.blue,
        )
      ),
      home: MyBottomTabs(),
    ));
  }
}

class MyBottomTabs extends StatefulWidget {
  @override
  _MyBottomTabsState createState() => _MyBottomTabsState();
}

class _MyBottomTabsState extends State<MyBottomTabs>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        child: TabBar(
          controller: controller,
          labelStyle: TextStyle(fontSize: 50),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(Icons.notifications_none)),
            Tab(icon: Icon(Icons.mail_outline)),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: <Widget>[
          HomePage(),
          SearchView(),
          NotificationsPage(),
          DirectMessageView(),
        ],
      ),
    );
  }
}
