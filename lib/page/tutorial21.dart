import 'package:flutter/material.dart';

class TutorialDuapuluhSatu extends StatefulWidget {
  TutorialDuapuluhSatu({Key key}) : super(key: key);

  @override
  _TutorialSembiDuapuluh createState() => _TutorialSembiDuapuluh();
}

class _TutorialSembiDuapuluh extends State<TutorialDuapuluhSatu> {
  TabBar myTabbar = TabBar(
    indicator: BoxDecoration(
      color: Colors.red,
      border: Border(
        bottom: BorderSide(
          color: Colors.amber,
          width: 5,
        ),
      ),
    ),
    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.home),
        text: "Home",
      ),
      Tab(
        child: Image(image: AssetImage('assets/icons/books.png')),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tutorial 21 - Tab Bar Costume',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(myTabbar.preferredSize.height),
            child: Container(
              color: Colors.green,
              child: myTabbar,
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
          ],
        ),
      ),
    );
  }
}
