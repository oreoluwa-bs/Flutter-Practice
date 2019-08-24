import 'package:flutter/material.dart';

import '../components/buttons/floating_button.dart';
import '../components/drawer/drawer_page.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: new TextField(
          style: TextStyle(fontSize: 20.0, color: Color(0xFFbdc6cf)),
          decoration: new InputDecoration(
            contentPadding:
                const EdgeInsets.only(left: 20.0, bottom: 8.0, top: 8.0),
            filled: true,
            fillColor: Colors.blue[50],
            hintText: 'Search Twitter',
            enabledBorder: const OutlineInputBorder(
              gapPadding: 4,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(40),
                right: Radius.circular(40),
              ),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
            focusedBorder: const OutlineInputBorder(
              gapPadding: 4,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(40),
                right: Radius.circular(40),
              ),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
            border: const OutlineInputBorder(
              gapPadding: 4,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(40),
                right: Radius.circular(40),
              ),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
          ),
        ),
        // title: Text(
        //   'Search',
        //   style: TextStyle(color: Colors.black),
        // ),
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
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
      floatingActionButton: FloatingButtn(Icons.create),
    );
  }
}
