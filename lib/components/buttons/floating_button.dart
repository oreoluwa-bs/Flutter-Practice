import 'package:flutter/material.dart';

class FloatingButtn extends StatelessWidget {
  final IconData icon;
  final Function func = () {
    print('Hi');
  };

  FloatingButtn(this.icon);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: func,
      child: Icon(icon),
    );
  }
}
