import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TutorialDuapuluhTDelapan extends StatefulWidget {
  TutorialDuapuluhTDelapan({Key key}) : super(key: key);

  @override
  _TutorialDuapuluhDelapanState createState() =>
      _TutorialDuapuluhDelapanState();
}

class _TutorialDuapuluhDelapanState extends State<TutorialDuapuluhTDelapan> {
  final idController = TextEditingController();
  var hasil;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 28 - HTTP Request (Get Method) Kumpulan Data'),
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
          Text(hasil ?? ''),

          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: () {
              setState(() {
                GetUser.connectURL().then((value) {
                  setState(() {
                    hasil = '';
                    for (var i = 0; i < value.length; i++) {
                      hasil = hasil + " Email :  " + value[i].email + "\n";
                    }
                  });
                });
              });
            },
            child: Text("GET"),
          )
        ],
      )),
    );
  }
}

class GetUser {
  String email, namadepan, namabelakang;
  int id;

  GetUser({
    this.id,
    this.email,
    this.namadepan,
    this.namabelakang,
  });

  factory GetUser.ambilDataSatu(Map<String, dynamic> object) {
    return GetUser(
      id: object['id'],
      email: object['email'],
      namadepan: object['first_name'],
      namabelakang: object['last_name'],
    );
  }

  static Future<List<GetUser>> connectURL() async {
    String urlAPI = "https://reqres.in/api/users/";

    var result = await http.get(urlAPI);
    var jsonObject = json.decode(result.body);
    List<dynamic> userData = (jsonObject as Map<String, dynamic>)['data'];
    List<GetUser> user = [];
    for (var i = 0; i < userData.length; i++) {
      user.add(GetUser.ambilDataSatu(userData[i]));
    }

    return user;
  }
}
