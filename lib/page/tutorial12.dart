import 'package:flutter/material.dart';

class TutorialDuabelas extends StatefulWidget {
  TutorialDuabelas({Key key}) : super(key: key);

  @override
  _TutorialDuabelasState createState() => _TutorialDuabelasState();
}

class _TutorialDuabelasState extends State<TutorialDuabelas> {
  TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 12 - Text Field'),
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
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              maxLength: 7,
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(
              controller.text,
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
