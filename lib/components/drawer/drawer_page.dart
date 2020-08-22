import 'package:flutter/material.dart';

import '../../screens/MomentsPage.dart';
import '../../screens/BookmarksPage.dart';
import '../../screens/ListsPage.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.person,
                    size: 50,
                  ),
                  Text(
                    'Oreoluwa',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                  Text(
                    '@oreoluwa',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '162 ',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                // color: Colors.blue,
                ),
          ),
          ListTile(
            title: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                children: <Widget>[Icon(Icons.person), Text('Profile')],
              ),
            ),
          ),
          ListTile(
            title: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListsPage()),
                );
              },
              child: Row(
                children: <Widget>[Icon(Icons.note), Text('Lists')],
              ),
            ),
          ),
          ListTile(
            title: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookmarksPage()),
                );
              },
              child: Row(
                children: <Widget>[Icon(Icons.bookmark), Text('Bookmarks')],
              ),
            ),
          ),
          ListTile(
            title: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MomentsPage()),
                );
              },
              child: Row(
                children: <Widget>[Icon(Icons.volume_mute), Text('Moments')],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
