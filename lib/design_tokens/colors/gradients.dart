import 'package:flutter/cupertino.dart';

class AppGradients {

  AppGradients._();

  static const LinearGradient style1 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xff6374E0),
      Color(0xffFF85CE),
      Color(0xffF545AE),
    ],
    stops: [
      0,1,1
    ],
  );

}