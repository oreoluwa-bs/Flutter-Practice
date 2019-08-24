import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Lists'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Bookmarks'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Moments'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
