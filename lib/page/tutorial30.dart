import 'dart:math';
import 'package:flutter/material.dart';

class TutorialTigapuluh extends StatefulWidget {
  TutorialTigapuluh({Key key}) : super(key: key);

  @override
  _TutorialTigapuluhState createState() => _TutorialTigapuluhState();
}

class _TutorialTigapuluhState extends State<TutorialTigapuluh> {
  bool isON = false;
  double myPadding = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 30 - Animation Padding'),
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
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = Random().nextInt(50).toDouble();
                        });
                      },
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = Random().nextInt(50).toDouble();
                        });
                      },
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = Random().nextInt(50).toDouble();
                        });
                      },
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = Random().nextInt(50).toDouble();
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
