import 'package:app_ui_m2/core/models/interface_color.dart';
import 'package:flutter/cupertino.dart';

class InterfaceColors {
  InterfaceColors._();

  static final InterfaceColor action = InterfaceColor(
    defaultColor: const Color(0xff0C29FF),
    disabledColor: const Color(0xffC2C9FF),
    backGroundColor: const Color(0xffF6F7FB),
    specialColor: const Color(0xffE0E4FF),
  );

  static final InterfaceColor success = InterfaceColor(
    defaultColor: const Color(0xff31B67A),
    disabledColor: const Color(0xffB4E0CC),
    backGroundColor: const Color(0xffEBFAF3),
    specialColor: const Color(0xffD3F0E3),
  );

  static final InterfaceColor alert = InterfaceColor(
    defaultColor: const Color(0xffEBAD01),
    disabledColor: const Color(0xffFFEFC2),
    backGroundColor: const Color(0xffFFF7E0),
    specialColor: const Color(0xffFAF6EB),
  );

  static final InterfaceColor error = InterfaceColor(
    defaultColor: const Color(0xffFD3C2D),
    disabledColor: const Color(0xffFAC2BE),
    backGroundColor: const Color(0xffFFECEB),
  );

  static final InterfaceColor grape = InterfaceColor(
    defaultColor: const Color(0xffAD0AFF),
    backGroundColor: const Color(0xffF1D6FF),
  );
}
