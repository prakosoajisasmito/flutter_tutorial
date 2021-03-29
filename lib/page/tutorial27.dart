import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TutorialDuapuluhTujuh extends StatefulWidget {
  TutorialDuapuluhTujuh({Key key}) : super(key: key);

  @override
  _TutorialDuapuluhTujuhState createState() => _TutorialDuapuluhTujuhState();
}

class _TutorialDuapuluhTujuhState extends State<TutorialDuapuluhTujuh> {
  final idController = TextEditingController();
  var hasil;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 27 - HTTP Request / Koneksi ke API (Get Method)'),
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
          Container(
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "ID",
              ),
              controller: idController,
            ),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: () {
              setState(() {
                GetUser.connectURL(idController.text).then((value) {
                  setState(() {
                    hasil = value.id.toString() + ' | ' + value.email;
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

  static Future<GetUser> connectURL(String id) async {
    String urlAPI = "https://reqres.in/api/users/" + id;

    var result = await http.get(urlAPI);
    var jsonObject = json.decode(result.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return GetUser.ambilDataSatu(userData);
  }
}
