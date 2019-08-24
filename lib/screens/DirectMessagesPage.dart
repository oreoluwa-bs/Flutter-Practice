import 'package:flutter/material.dart';

class DirectMessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Icon(Icons.inbox, size: 100, color: Colors.orange),
      ),
    );
  }
}