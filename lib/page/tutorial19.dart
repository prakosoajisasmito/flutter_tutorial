import 'package:flutter/material.dart';

class TutorialSembilanbelas extends StatefulWidget {
  TutorialSembilanbelas({Key key}) : super(key: key);

  @override
  _TutorialSembilanbelasState createState() => _TutorialSembilanbelasState();
}

class _TutorialSembilanbelasState extends State<TutorialSembilanbelas> {
  TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.blue,
          flexibleSpace: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'Tutorial 19 - AppBar Custom Height',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            margin: EdgeInsets.only(top: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                child: Image(
                  height: 200,
                  width: 200,
                  image: NetworkImage(
                    'https://www.kardusinfo.com/wp-content/uploads/2021/02/Frame-6.png',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
