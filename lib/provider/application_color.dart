import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isLighblue = true;

  bool get isLightBluee => _isLighblue;

  set isLightBlue(bool value) {
    _isLighblue = value;
    notifyListeners();
  }

  Color get warna => (_isLighblue) ? Colors.blue : Colors.amber;
}

class Cart with ChangeNotifier {
  int _quality = 0;

  int get quality => _quality;

  set quality(int value) {
    _quality = value;
    notifyListeners();
  }
}

class Money with ChangeNotifier {
  int _balance = 5000;

  int get balance => _balance;

  set balance(int value) {
    _balance = value;
    notifyListeners();
  }
}
