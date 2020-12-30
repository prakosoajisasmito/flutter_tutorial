import 'package:flutter/material.dart';

class TutorialDelapan extends StatelessWidget {
  const TutorialDelapan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 8 - Spacer Widgets'),
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
