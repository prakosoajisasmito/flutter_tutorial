import 'package:flutter/material.dart';
import 'package:full_tutorial/page/tutorial1.dart';
import 'package:full_tutorial/page/tutorial10.dart';
import 'package:full_tutorial/page/tutorial11.dart';
import 'package:full_tutorial/page/tutorial2.dart';
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
];
