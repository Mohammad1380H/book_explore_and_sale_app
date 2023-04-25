import 'package:flutter/material.dart';

abstract class Dimens {
  static var width = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
  static var height = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;

  static double smallSize = 5;
  static double mediumSize = 10;
  static double largSize = 15;
  static double vLargSize = 20;
  static double xLargSize = 40;
  static double marginSpace = 20;
}
