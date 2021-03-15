import 'package:flutter/material.dart';

class TutorialSepuluh extends StatelessWidget {
  const TutorialSepuluh({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 10 - Stack'),
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
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Color(0XFFe74c3c),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
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
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Color(0XFFe74c3c),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Hello World !",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 50,
              width: 200,
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.green,
                child: Text(
                  'My Button',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
