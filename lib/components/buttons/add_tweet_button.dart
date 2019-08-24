import 'package:flutter/material.dart';

class AddTweetNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print('hi');
      },
      child: Icon(Icons.create),
    );
  }
}

