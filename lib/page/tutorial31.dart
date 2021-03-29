import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TutorialTigapuluhSatu extends StatefulWidget {
  TutorialTigapuluhSatu({Key key}) : super(key: key);

  @override
  _TutorialTigapuluhSatuState createState() => _TutorialTigapuluhSatuState();
}

class _TutorialTigapuluhSatuState extends State<TutorialTigapuluhSatu> {
  TextEditingController myController = TextEditingController(text: 'No Name');
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nama', myController.text);
    pref.setBool('ison', isON);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama') ?? 'No Name';
  }

  Future<bool> getIson() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Tutorial 31 - Shared Preferences & Double Question Mark Operator'),
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
            Container(
              width: 250,
              child: TextField(
                controller: myController,
              ),
            ),
            Switch(
              value: isON,
              onChanged: (newValue) {
                setState(() {
                  isON = newValue;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                saveData();
              },
              child: Text("Simpan"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  getNama().then((value) => myController.text = value);
                  getIson().then((values) => isON = values);
                });
              },
              child: Text("Load"),
            ),
          ],
        ),
      ),
    );
  }
}
