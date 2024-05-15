import 'package:app_ui_m2/core_components/views/system_messages/box/basic_box.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_icons.dart';
import 'package:flutter/cupertino.dart';

class AppBox {
  AppBox._();

  static AppBasicBox error(String text) => AppBasicBox(
        iconData: CupertinoIcons.exclamationmark_circle,
        iconColor: InterfaceColors.error.defaultColor as Color,
        text: text,
        textColor: InterfaceColors.error.defaultColor as Color,
        backGroundColor: InterfaceColors.error.backGroundColor as Color,
      );

  static AppBasicBox alert(String text) => AppBasicBox(
        iconData: AppIcons.alert,
        iconColor: NeutralColors.neutral900,
        text: text,
        textColor: NeutralColors.neutral900,
        backGroundColor: InterfaceColors.alert.specialColor as Color,
      );

  static AppBasicBox success(String text) => AppBasicBox(
        iconData: AppIcons.check,
        iconColor: InterfaceColors.success.defaultColor as Color,
        text: text,
        textColor: InterfaceColors.success.defaultColor as Color,
        backGroundColor: InterfaceColors.success.backGroundColor as Color,
      );

  static AppBasicBox info(String text) => AppBasicBox(
        iconData: AppIcons.info,
        iconColor: InterfaceColors.action.defaultColor as Color,
        text: text,
        textColor: InterfaceColors.action.defaultColor as Color,
        backGroundColor: InterfaceColors.action.specialColor as Color,
      );
}
