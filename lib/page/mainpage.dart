import 'package:flutter/material.dart';
import 'package:full_tutorial/model/menu.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Full Tutorial'),
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
      body: Container(
        margin: EdgeInsets.all(10),
        child: Flexible(
          child: ListView(
              padding: EdgeInsets.all(2),
              children: myList.map((data) {
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return data.url;
                      }));
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Icon(Icons.assignment_sharp),
                        ),
                        Text(data.title)
                      ],
                    ),
                  ),
                );
              }).toList()),
        ),
      ),
    );
  }
}
