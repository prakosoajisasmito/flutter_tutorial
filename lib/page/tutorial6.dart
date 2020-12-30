import 'package:flutter/material.dart';

class TutorialEnam extends StatefulWidget {
  TutorialEnam({Key key}) : super(key: key);

  @override
  _TutorialEnamState createState() => _TutorialEnamState();
}

class _TutorialEnamState extends State<TutorialEnam> {
  List<Widget> widgets = [];
  int angka = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 6 - List and List View'),
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
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    "Tambah Angka",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      widgets.add(
                        Text(
                          "Angka Ini " + angka.toString(),
                          style: TextStyle(fontSize: 32),
                        ),
                      );
                      angka++;
                    });
                  },
                ),
                RaisedButton(
                  child: Text(
                    "Hapus Angka",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      angka--;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
