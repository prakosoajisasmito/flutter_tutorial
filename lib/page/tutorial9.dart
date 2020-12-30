import 'package:flutter/material.dart';
import 'package:full_tutorial/styles/icon_style.dart';

class TutorialSembilan extends StatelessWidget {
  const TutorialSembilan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Container(
          child: Row(
            children: <Widget>[
              Container(
                child: Image.asset(logoImage),
                height: 25,
                width: 25,
              ),
              Text(
                "Tutorial 9 - App Bar",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
            image: DecorationImage(
              image: AssetImage(bgTiga),
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Row(
              children: <Widget>[
                Spacer(),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ),
                Spacer(),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
                Spacer(),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.yellow,
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              children: <Widget>[
                Spacer(
                  flex: 2,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.purple,
                ),
                Spacer(
                  flex: 3,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.brown,
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
