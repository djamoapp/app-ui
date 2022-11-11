import 'package:app_ui/core/models/interface_color.dart';
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
  );

  static final InterfaceColor alert = InterfaceColor(
    defaultColor: const Color(0xffDDC25A),
    disabledColor: const Color(0xffFFEFC2),
    backGroundColor: const Color(0xffFFFAEB),
    specialColor: const Color(0xffFAF6EB),
  );

  static final InterfaceColor error = InterfaceColor(
    defaultColor: const Color(0xffFD3C2D),
    disabledColor: const Color(0xffFAC2BE),
    backGroundColor: const Color(0xffFFECEB),
  );
}
