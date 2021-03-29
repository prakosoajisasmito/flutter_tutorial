import 'package:flutter/material.dart';
import 'package:full_tutorial/provider/application_color.dart';
import 'package:provider/provider.dart';

class TutorialTigapuluhDua extends StatelessWidget {
  const TutorialTigapuluhDua({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (contex) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            title: Consumer<ApplicationColor>(
              builder: (contex, applicationColor, _) => Text(
                'Tutorial 32 - Provider State Management',
                style: TextStyle(color: applicationColor.warna),
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, aa, _) => AnimatedContainer(
                    height: 100,
                    width: 100,
                    color: aa.warna,
                    duration: Duration(seconds: 1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        'AB',
                      ),
                    ),
                    Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Switch(
                        value: applicationColor.isLightBluee,
                        onChanged: (newValue) {
                          applicationColor.isLightBlue = newValue;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        'LB',
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
