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
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
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
                      // overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              padding: EdgeInsets.only(right: 0),
                              onPressed: () {},
                              icon: Icon(Icons.chat_bubble_outline),
                            ),
                            Text('83')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.repeat),
                            ),
                            Text('83')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border),
                            ),
                            Text('83')
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              IconButton(
                // alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(0),
                onPressed: () {},
                icon: Icon(Icons.expand_more),
              )
            ],
          )
        ],
      ),
    );
  }
}
