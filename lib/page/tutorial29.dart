import 'package:flutter/material.dart';

class TutorialDuapuluhTSembilan extends StatefulWidget {
  TutorialDuapuluhTSembilan({Key key}) : super(key: key);

  @override
  _TutorialDuapuluhSembilanState createState() =>
      _TutorialDuapuluhSembilanState();
}

class _TutorialDuapuluhSembilanState extends State<TutorialDuapuluhTSembilan> {
  bool isON = false;
  Widget myWidget = Container(
    key: ValueKey(2),
    height: 100,
    width: 200,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 29 - Switch & AnimatedSwitcher Widget'),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AnimatedSwitcher(
              child: myWidget,
              duration: Duration(seconds: 1),
              transitionBuilder: (child, animation) => ScaleTransition(
                scale: animation,
                child: child,
              ),
            ),
            Switch(
              inactiveThumbColor: Colors.red[200],
              inactiveTrackColor: Colors.red,
              activeColor: Colors.green,
              value: isON,
              onChanged: (newValue) {
                isON = newValue;
                setState(() {
                  if (isON) {
                    myWidget = Container(
                      key: ValueKey(1),
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    );
                  } else {
                    myWidget = Container(
                      key: ValueKey(2),
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    );
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
