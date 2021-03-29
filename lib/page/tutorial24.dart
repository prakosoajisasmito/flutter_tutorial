import 'package:flutter/material.dart';

class TutorialDuapuluhEmpat extends StatefulWidget {
  TutorialDuapuluhEmpat({Key key}) : super(key: key);

  @override
  _TutorialDuapuluhEmpatState createState() => _TutorialDuapuluhEmpatState();
}

class _TutorialDuapuluhEmpatState extends State<TutorialDuapuluhEmpat> {
  bool isPress = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 23 - Gradient Opacity ShaderMask'),
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
        child: ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                .createShader(
              Rect.fromLTRB(
                0,
                0,
                rectangle.width,
                rectangle.height,
              ),
            );
          },
          blendMode: BlendMode.dstATop,
          child: Image(
              image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/a/a4/Anatomy_of_a_Sunset-2.jpg")),
        ),
      ),
    );
  }
}
