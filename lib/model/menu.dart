import 'package:flutter/material.dart';
import 'package:full_tutorial/page/tutorial1.dart';
import 'package:full_tutorial/page/tutorial10.dart';
import 'package:full_tutorial/page/tutorial11.dart';
import 'package:full_tutorial/page/tutorial12.dart';
import 'package:full_tutorial/page/tutorial13.dart';
import 'package:full_tutorial/page/tutorial14.dart';
import 'package:full_tutorial/page/tutorial15.dart';
import 'package:full_tutorial/page/tutorial16.dart';
import 'package:full_tutorial/page/tutorial17.dart';
import 'package:full_tutorial/page/tutorial18.dart';
import 'package:full_tutorial/page/tutorial19.dart';
import 'package:full_tutorial/page/tutorial2.dart';
import 'package:full_tutorial/page/tutorial20.dart';
import 'package:full_tutorial/page/tutorial3.dart';
import 'package:full_tutorial/page/tutorial4.dart';
import 'package:full_tutorial/page/tutorial5.dart';
import 'package:full_tutorial/page/tutorial6.dart';
import 'package:full_tutorial/page/tutorial7.dart';
import 'package:full_tutorial/page/tutorial8.dart';
import 'package:full_tutorial/page/tutorial9.dart';

class Items {
  String title;
  final Widget url;
  Items({this.title, this.url});
}

Items item1 = new Items(
  title: "Hello World !",
  url: TutorialSatu(),
);

Items item2 = new Items(
  title: "Text And Icon",
  url: TutorialDua(),
);

Items item3 = new Items(
  title: "Font Style And Color Style",
  url: TutorialTiga(),
);

Items item4 = new Items(
  title: "Icon Images",
  url: TutorialEmpat(),
);

Items item5 = new Items(
  title: "Layout",
  url: TutorialLima(),
);

Items item6 = new Items(
  title: "List And List View",
  url: TutorialEnam(),
);

Items item7 = new Items(
  title: "Flexible Container",
  url: TutorialTujuh(),
);

Items item8 = new Items(
  title: "Spacer Widget",
  url: TutorialDelapan(),
);
Items item9 = new Items(
  title: "App Bar",
  url: TutorialSembilan(),
);
Items item10 = new Items(
  title: "Stack",
  url: TutorialSepuluh(),
);
Items item11 = new Items(
  title: "Card Widgets",
  url: TutorialSebelas(),
);
Items item12 = new Items(
  title: "Text Field",
  url: TutorialDuabelas(),
);
Items item13 = new Items(
  title: "Text Field Costume",
  url: TutorialTigabelas(),
);
Items item14 = new Items(
  title: "Media Query",
  url: TutorialEmpatbelas(),
);
Items item15 = new Items(
  title: "Button Costume",
  url: TutorialLimabelas(),
);
Items item16 = new Items(
  title: "Card Costume",
  url: TutorialEnambelas(),
);
Items item17 = new Items(
  title: "Login Page",
  url: TutorialTujuhbelas(),
);
Items item18 = new Items(
  title: "Hero Animation",
  url: TutorialDepalanbelas(),
);
Items item19 = new Items(
  title: "AppBar Custom Height",
  url: TutorialSembilanbelas(),
);
Items item20 = new Items(
  title: "Tab Bar",
  url: TutorialDuapuluh(),
);
List<Items> myList = [
  item1,
  item2,
  item3,
  item4,
  item5,
  item6,
  item7,
  item8,
  item9,
  item10,
  item11,
  item12,
  item13,
  item14,
  item15,
  item16,
  item17,
  item18,
  item19,
  item20,
];
