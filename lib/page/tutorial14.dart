import 'package:flutter/material.dart';

class TutorialEmpatbelas extends StatefulWidget {
  TutorialEmpatbelas({Key key}) : super(key: key);

  @override
  _TutorialEmpatbelasState createState() => _TutorialEmpatbelasState();
}

class _TutorialEmpatbelasState extends State<TutorialEmpatbelas> {
  TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 14 - Media Query'),
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
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: kotakku(),
            )
          : Row(
              children: kotakku(),
            ),
    );
  }

  List<Widget> kotakku() {
    return <Widget>[
      Container(
        color: Colors.red,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.grey,
        height: 100,
        width: 100,
      ),
    ];
  }
}
