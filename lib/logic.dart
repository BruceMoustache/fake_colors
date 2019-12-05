import 'package:flutter/material.dart';
import 'dart:math';

class Logic {
  static Color appBackgroundColor;
  static List<Color> history = [];

  static void changeBackgroundColor() {
    int index = Random().nextInt(Colors.primaries.length);
    appBackgroundColor =  Colors.primaries[index];
    print('Background color changed');

    history.add(appBackgroundColor);
  }
}
