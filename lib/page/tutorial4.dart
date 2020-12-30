import 'package:flutter/material.dart';
import 'package:full_tutorial/styles/font_style.dart';
import 'package:full_tutorial/styles/icon_style.dart';

class TutorialEmpat extends StatelessWidget {
  const TutorialEmpat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 4 - Icon Style'),
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
        margin: EdgeInsets.all(10),
        child: Flexible(
          child: ListView(
            children: <Widget>[
              Card(
                color: Colors.green[200],
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        bookIcon,
                        height: 20,
                      ),
                    ),
                    Text(
                      'Icon buku',
                      style: workSans,
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.green[200],
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        rocketIcon,
                        height: 20,
                      ),
                    ),
                    Text(
                      'Icon Rocket',
                      style: workSans,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
