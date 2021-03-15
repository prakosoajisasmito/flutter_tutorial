import 'package:flutter/material.dart';

class TutorialDuapuluh extends StatefulWidget {
  TutorialDuapuluh({Key key}) : super(key: key);

  @override
  _TutorialSembiDuapuluh createState() => _TutorialSembiDuapuluh();
}

class _TutorialSembiDuapuluh extends State<TutorialDuapuluh> {
  TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tutorial 20 - Tab Bar',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              child: Image(image: AssetImage('assets/icons/books.png')),
            ),
            Tab(
              icon: Icon(Icons.book),
            ),
            Tab(
              text: 'About',
            )
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Text('Tab 3'),
            ),
            Center(
              child: Text('Tab 4'),
            ),
          ],
        ),
      ),
    );
  }
}
