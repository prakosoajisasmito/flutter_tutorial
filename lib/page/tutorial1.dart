import 'package:flutter/material.dart';

// Hello World !

class TutorialSatu extends StatelessWidget {
  const TutorialSatu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 1 - Hello World !'),
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
        child: new Text(
          "Hello World !",
          style: TextStyle(
              fontSize: 50.0,
              color: Color(0xffe74c3c),
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
