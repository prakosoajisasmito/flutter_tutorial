import 'package:flutter/material.dart';

class TutorialLima extends StatelessWidget {
  const TutorialLima({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 5 - Layouts'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff27ae60), Color(0xff27ae60)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.blue,
              height: 50.0,
              width: 50.0,
            ),
            Icon(Icons.adjust, size: 50.0, color: Colors.pink),
            Icon(
              Icons.adjust,
              size: 50.0,
              color: Colors.purple,
            ),
            new Row(
              children: <Widget>[
                new Icon(
                  Icons.local_pizza,
                  size: 70.0,
                  color: Colors.red[300],
                ),
                new Icon(
                  Icons.local_pizza,
                  size: 70.0,
                  color: Colors.red[300],
                ),
              ],
            ),
            Container(
              color: Colors.orange,
              height: 50.0,
              width: 50.0,
            ),
            Icon(
              Icons.adjust,
              size: 50.0,
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}
