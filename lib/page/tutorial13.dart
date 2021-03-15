import 'package:flutter/material.dart';

class TutorialTigabelas extends StatefulWidget {
  TutorialTigabelas({Key key}) : super(key: key);

  @override
  _TutorialTigabelasState createState() => _TutorialTigabelasState();
}

class _TutorialTigabelasState extends State<TutorialTigabelas> {
  TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 13 - Text Field Costume'),
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
              decoration: InputDecoration(
                fillColor: Colors.white,
                icon: Icon(Icons.person),
                prefixIcon: Icon(Icons.book),
                prefixText: "Name",
                // hintText: "Nama Lengkap",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Nama Lengkap",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                prefixStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
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
