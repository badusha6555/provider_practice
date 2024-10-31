import 'package:flutter/material.dart';

class RemoveController extends ChangeNotifier {
  List<String> fruits = ["Apple", "Orange", "Grapes", "Mango"];

  void removeFruit(int index) {
    fruits.removeAt(index);
    notifyListeners();
  }
}
