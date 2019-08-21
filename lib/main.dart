import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyTabs(),
    ));

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Pages', style: TextStyle(color: Colors.black),),
      //   backgroundColor: Colors.white,
      //   //   bottom: TabBar(
      //   //     controller: controller,
      //   //     tabs: <Tab>[
      //   //       Tab(icon: Icon(Icons.home)),
      //   //       Tab(icon: Icon(Icons.search)),
      //   //       Tab(icon: Icon(Icons.notifications)),
      //   //       Tab(icon: Icon(Icons.inbox)),
      //   //     ],
      //   //   ),
      // ),
      // bottomNavigationBar: Material(
      //   color: Colors.black54,
      //   child: TabBar(
      //     controller: controller,
      //     tabs: <Tab>[
      //       Tab(icon: Icon(Icons.home)),
      //       Tab(icon: Icon(Icons.search)),
      //       Tab(icon: Icon(Icons.notifications)),
      //       Tab(icon: Icon(Icons.inbox)),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          labelStyle: TextStyle(fontSize: 40),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.white,
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(Icons.notifications)),
            Tab(icon: Icon(Icons.inbox)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          HomeView(),
          SearchView(),
          NotificationView(),
          DirectMessageView(),
        ],
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Icon(
          Icons.home,
          size: 100,
          color: Colors.indigo,
        ),
      ),
    );
  }
}

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Icon(Icons.search, size: 100, color: Colors.red),
      ),
    );
  }
}

class NotificationView extends StatefulWidget {
  @override
  _NotificationViewState createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.notification_important, color: Colors.black)),
            Tab(icon: Icon(Icons.notifications_active, color: Colors.black)),
            Tab(icon: Icon(Icons.notifications_paused, color: Colors.black)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          NotificationType(Icons.notification_important, Colors.amber),
          NotificationType(Icons.notifications_active, Colors.green),
          NotificationType(Icons.notifications_paused, Colors.red),
        ],
      ),
    );
  }
}

class DirectMessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Icon(Icons.inbox, size: 100, color: Colors.orange),
      ),
    );
  }
}

class NotificationType extends StatelessWidget {
  final IconData icon;
  final Color color;

  NotificationType(this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(this.icon, size: 100, color: this.color),
      ),
    );
  }
}
