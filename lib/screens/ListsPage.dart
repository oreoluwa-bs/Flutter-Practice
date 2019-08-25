import 'package:flutter/material.dart';

import '../components/buttons/floating_button.dart';

class ListsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Lists',
        style: TextStyle(color: Colors.black),
      )),
      floatingActionButton: FloatingButtn(Icons.note_add),
    );
  }
}
