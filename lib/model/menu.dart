import 'package:flutter/material.dart';
import 'package:full_tutorial/page/tutorial1.dart';
import 'package:full_tutorial/page/tutorial2.dart';
import 'package:full_tutorial/page/tutorial3.dart';
import 'package:full_tutorial/page/tutorial4.dart';
import 'package:full_tutorial/page/tutorial5.dart';

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
List<Items> myList = [item1, item2, item3, item4, item5];
