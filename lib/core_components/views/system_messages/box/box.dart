import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/system_messages/box/basic_box.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';

class AppBox {
  AppBox._();

  static AppBasicBox error(String text) => AppBasicBox(
        iconData: AppIcons.close,
        iconColor: InterfaceColors.error.defaultColor as Color,
        text: text,
        textColor: InterfaceColors.error.defaultColor as Color,
        backGroundColor: InterfaceColors.error.backGroundColor as Color,
      );

  static AppBasicBox alert(String text) => AppBasicBox(
        iconData: AppIcons.alert,
        iconColor: InterfaceColors.alert.defaultColor as Color,
        text: text,
        textColor: InterfaceColors.alert.defaultColor as Color,
        backGroundColor: InterfaceColors.alert.backGroundColor as Color,
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
        backGroundColor: InterfaceColors.action.backGroundColor as Color,
      );
}
