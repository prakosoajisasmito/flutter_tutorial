import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TutorialDuapuluhEnam extends StatefulWidget {
  TutorialDuapuluhEnam({Key key}) : super(key: key);

  @override
  _TutorialDuapuluhEnamState createState() => _TutorialDuapuluhEnamState();
}

class _TutorialDuapuluhEnamState extends State<TutorialDuapuluhEnam> {
  final namaController = TextEditingController();
  final jobController = TextEditingController();
  var hasil;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 26 - HTTP Request / Koneksi ke API'),
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
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Nama",
                ),
                controller: namaController,
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Job",
                ),
                controller: jobController,
              ),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                setState(() {
                  PostResult.connectUrl(namaController.text, jobController.text)
                      .then((value) {
                    setState(() {
                      hasil = value.id +
                          ' | ' +
                          value.name +
                          ' | ' +
                          value.job +
                          ' | ' +
                          value.created;
                    });
                  });
                });
              },
              child: Text("POST"),
            )
          ],
        ),
      ),
    );
  }
}

class PostResult {
  String name;
  String id;
  String job;
  String created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }

  static Future<PostResult> connectUrl(String nama, String jobs) async {
    String apiURL = "https://reqres.in/api/users";
    var result = await http.post(apiURL, body: {
      "name": nama,
      "job": jobs,
    });
    var jsonObject = json.decode(result.body);

    return PostResult.createPostResult(jsonObject);
  }
}
