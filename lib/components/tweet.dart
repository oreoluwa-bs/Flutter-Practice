import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.lightBlue.shade900),
        ),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Tyler, The Creator'),
                    Text('@tylerthecreator'),
                    Text('~12h')
                  ],
                ),
                Text(
                  'My Dms are now opened for friendship shots.',
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Icon(Icons.expand_more),
          // IconButton(
          //   // alignment: Alignment.centerLeft,
          //   padding: new EdgeInsets.only(left: 0,right: 0),
          //   onPressed: () {},
          //   icon: Icon(Icons.expand_more),
          // )
        ],
      ),
    );
  }
}
