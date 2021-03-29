import 'package:flutter/material.dart';

class TutorialDuapuluhLima extends StatefulWidget {
  TutorialDuapuluhLima({Key key}) : super(key: key);

  @override
  _TutorialDuapuluhLimaState createState() => _TutorialDuapuluhLimaState();
}

class _TutorialDuapuluhLimaState extends State<TutorialDuapuluhLima> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: MyClipper(),
        child: Container(
          color: Colors.red,
          height: 220,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.5, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
