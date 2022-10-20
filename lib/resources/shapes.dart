import 'package:flutter/material.dart';

class MyShapes {
  static BorderRadius borderRadiusS = BorderRadius.circular(10);
  static BorderRadius borderRadiusM = BorderRadius.circular(15);
  static BorderRadius borderRadiusL = BorderRadius.circular(25);
  static BoxShadow shadow = BoxShadow(
    color: Colors.grey.shade100,
    blurRadius: 10,
    offset: const Offset(0, 5),
  );
}
