import 'package:flutter/material.dart';
import 'package:full_tutorial/provider/application_color.dart';
import 'package:provider/provider.dart';

class TutorialTigapuluhTiga extends StatelessWidget {
  const TutorialTigapuluhTiga({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Money>(
            create: (contex) => Money(),
          ),
          ChangeNotifierProvider<Cart>(
            create: (contex) => Cart(),
          ),
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                child: Icon(Icons.shopping_cart),
                backgroundColor: Colors.purple,
                onPressed: () {
                  if (money.balance >= 1000) {
                    money.balance -= 1000;
                    cart.quality += 1;
                  }
                },
              ),
            ),
          ),
          appBar: AppBar(
            title: Consumer<ApplicationColor>(
              builder: (contex, applicationColor, _) => Text(
                'Tutorial 33 - Multi Provider State Management',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Balance : ',
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                    Consumer<Money>(
                      builder: (contex, money, _) => Container(
                        alignment: Alignment.centerRight,
                        height: 30,
                        width: 200,
                        child: Text(
                          money.balance.toString() + ' ',
                          style: TextStyle(color: Colors.black87, fontSize: 16),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 2, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Consumer<Cart>(
                  builder: (contex, cart, _) => Container(
                    height: 30,
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Apel 1000 X ' + cart.quality.toString()),
                          Text((1000 * cart.quality).toString() + ' '),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
