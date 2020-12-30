import 'package:flutter/material.dart';
import 'package:full_tutorial/styles/font_style.dart';

// Hello World !

class TutorialTiga extends StatelessWidget {
  const TutorialTiga({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 3 - Font Style And Color Style'),
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
      body: new Center(
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "You don't have the votes.\n",
                style: robotoHeading,
              ),
              TextSpan(
                text: "You don't have the votes!\n",
                style: workSans,
              ),
              TextSpan(
                text:
                    "You're gonna need congressional approval and you don't have the votes!\n",
                style: yanone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
