import 'package:flutter/material.dart';

// Hello World !

class TutorialDua extends StatelessWidget {
  const TutorialDua({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 2 - Text And Icon !'),
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
      body: new Center(
        child: Container(
          color: Colors.blue[700],
          width: 200.0,
          height: 150.0,
          child: new Center(
            child: Column(
              children: <Widget>[
                Text(
                  "Halaman Home 1",
                  style:
                      new TextStyle(color: Colors.white, fontFamily: "Serif"),
                ),
                Icon(Icons.accessibility, color: Colors.white, size: 90.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
