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
          )),
      home: MyBottomTabs(),
    ));
  }
}

class MyBottomTabs extends StatefulWidget {
  MyBottomTabs({Key key}) : super(key: key);

  @override
  _MyBottomTabsState createState() => _MyBottomTabsState();
}

class _MyBottomTabsState extends State<MyBottomTabs> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchView(),
    NotificationsPage(),
    DirectMessageView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              title: Text('Notification')),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline), title: Text('Direct Messages')),
        ],
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

// class _MyBottomTabsState extends State<MyBottomTabs>
//     with SingleTickerProviderStateMixin {
//   TabController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = new TabController(vsync: this, length: 4);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Material(
//         child: TabBar(
//           controller: controller,
//           labelStyle: TextStyle(fontSize: 50),
//           labelColor: Colors.blue,
//           unselectedLabelColor: Colors.grey,
//           indicatorColor: Colors.white,
//           tabs: <Widget>[
//             Tab(icon: Icon(Icons.home)),
//             Tab(icon: Icon(Icons.search)),
//             Tab(icon: Icon(Icons.notifications_none)),
//             Tab(icon: Icon(Icons.mail_outline)),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         physics: NeverScrollableScrollPhysics(),
//         controller: controller,
//         children: <Widget>[
//           HomePage(),
//           SearchView(),
//           NotificationsPage(),
//           DirectMessageView(),
//         ],
//       ),
//     );
//   }
// }
