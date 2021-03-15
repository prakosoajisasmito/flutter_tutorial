import 'package:flutter/material.dart';

class TutorialLimabelas extends StatefulWidget {
  TutorialLimabelas({Key key}) : super(key: key);

  @override
  _TutorialLimabelasState createState() => _TutorialLimabelasState();
}

class _TutorialLimabelasState extends State<TutorialLimabelas> {
  TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 15 - Button Costume'),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {},
              child: Text('Raised Button'),
              color: Colors.amberAccent,
              textColor: Colors.black87,
              shape: StadiumBorder(),
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 4,
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.purple],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    child: Center(
                      child: Text(
                        'My Botton',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
