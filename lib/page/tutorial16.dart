import 'package:flutter/material.dart';

class TutorialEnambelas extends StatefulWidget {
  TutorialEnambelas({Key key}) : super(key: key);

  @override
  _TutorialEnambelasState createState() => _TutorialEnambelasState();
}

class _TutorialEnambelasState extends State<TutorialEnambelas> {
  TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ecc71),
      appBar: AppBar(
        title: Text('Tutorial 16 - Card Costume'),
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
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.blueGrey],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.toptal.com/designers/subtlepatterns/patterns/email-pattern.png'),
                          fit: BoxFit.cover),
                    )),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://earthsky.org/upl/2013/09/sunrise-red-sea-Graham-Telford-e1489764712368.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.4,
                          20,
                          20),
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Beautiful Sunset In Beach Sintang Regency',
                              style: TextStyle(
                                  fontSize: 30, color: Colors.orangeAccent),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Posted On',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  ' 19 June 2021',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Spacer(flex: 10),
                              Icon(
                                Icons.thumb_up,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                '99',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                              Spacer(
                                flex: 5,
                              ),
                              Icon(Icons.comment, size: 18, color: Colors.grey),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                '284',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                              Spacer(
                                flex: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
