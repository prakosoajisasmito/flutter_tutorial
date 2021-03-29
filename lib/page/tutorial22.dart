import 'package:flutter/material.dart';
import 'dart:math';

class TutorialDuapuluhDua extends StatefulWidget {
  TutorialDuapuluhDua({Key key}) : super(key: key);

  @override
  _TutorialDuapuluhDuaState createState() => _TutorialDuapuluhDuaState();
}

class _TutorialDuapuluhDuaState extends State<TutorialDuapuluhDua> {
  bool isPress = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Tutorial 22 - Button Belah Ketupat Warna Warni (Transform)'),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Transform.rotate(
              angle: pi / 4,
              child: GestureDetector(
                onTapDown: (detials) {
                  setState(() {
                    isPress = !isPress;
                  });
                },
                onTap: () {
                  setState(() {
                    isPress = !isPress;
                  });
                },
                onTapCancel: () {
                  setState(() {
                    isPress = !isPress;
                  });
                },
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: (isPress) ? 5 : 10,
                  shadowColor: (isPress) ? Colors.red : Colors.blue,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: (isPress) ? Colors.red : Colors.blue,
                            child: Transform.rotate(
                              angle: -pi / 4,
                              child: Icon(
                                Icons.book,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(45, 45),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Material(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(45, -45),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Material(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(-45, -45),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Material(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(-45, 45),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Material(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Transform.rotate(
              angle: pi / 4,
              child: GestureDetector(
                onTapDown: (detials) {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                onTap: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                onTapCancel: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: (isPressed) ? 5 : 10,
                  shadowColor: (isPressed) ? Colors.pink : Colors.amber,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: (isPressed) ? Colors.pink : Colors.amber,
                            child: Transform.rotate(
                              angle: -pi / 4,
                              child: Icon(
                                Icons.adb,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(45, 45),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Material(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(45, -45),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Material(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(-45, -45),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Material(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(-45, 45),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Material(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        )
                      ],
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
