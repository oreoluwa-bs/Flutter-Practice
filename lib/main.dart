import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Mosaic'),
            centerTitle: true,
          ),
          body: Center(
            child: Text('Hello world'),
          ),
          floatingActionButton: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () => print('hi'),
            focusColor: Colors.blue,
            child: Text('Click'),
          ),
        ),
      ),
    );
