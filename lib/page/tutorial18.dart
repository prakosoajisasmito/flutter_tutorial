import 'package:flutter/material.dart';

class TutorialDepalanbelas extends StatefulWidget {
  TutorialDepalanbelas({Key key}) : super(key: key);

  @override
  _TutorialDepalanbelasState createState() => _TutorialDepalanbelasState();
}

class _TutorialDepalanbelasState extends State<TutorialDepalanbelas> {
  TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 18 - Hero Animation'),
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
      body: Hero(
        tag: 'pp',
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return SecondPage();
              }),
            );
          },
          child: Container(
            margin: EdgeInsets.only(top: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                child: Image(
                  height: 100,
                  width: 100,
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

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 18 - Hero Animation'),
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
      body: Hero(
        tag: 'pp',
        child: Center(
          child: GestureDetector(
            onTap: () {},
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
      ),
    );
  }
}
