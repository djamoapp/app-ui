import 'package:flutter/material.dart';

class NeutralColors {

  NeutralColors._();

  static const Color neutral900 = Color(0xff1C1C1F);

  static const Color neutral800 = Color(0xff2F2F33);

  static const Color neutral700 = Color(0xff6D6D73);

  static const Color disabledTextColor = Color(0xff84848A);

  static const Color disabledBackGroundColor = Color(_neutralPrimaryValue);

  static const Color bordersHoverColor = Color(0xffD0D0D6);

  static const Color formBordersColor = Color(0xffE4E4EB);

  static const Color neutral200 = Color(0xffF0F0F7);

  static const Color hoverStates = Color(0xffFAFAFC);

  static const MaterialColor neutral = MaterialColor(
    _neutralPrimaryValue,
    <int, Color>{
      100: hoverStates,
      200: neutral200,
      300: formBordersColor,
      400: bordersHoverColor,
      500: disabledBackGroundColor,
      600: disabledTextColor,
      700: neutral700,
      800: neutral800,
      900: neutral900,
    },
  );

  static const int _neutralPrimaryValue = 0xffB3B3BA;

}