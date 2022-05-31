import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/system_messages/inline/basic_inline.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';

const MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
const double _iconSize = 18;
const MainAxisSize _mainAxisSize = MainAxisSize.max;

class AppInline {
  AppInline._();

  static AppBasicInline error(
    String text, {
    double iconSize = _iconSize,
    MainAxisSize mainAxisSize = _mainAxisSize,
    MainAxisAlignment mainAxisAlignment = _mainAxisAlignment,
  }) =>
      AppBasicInline(
        iconData: CupertinoIcons.exclamationmark_circle,
        iconColor: InterfaceColors.error.defaultColor as Color,
        text: text,
        iconSize: iconSize,
        textColor: InterfaceColors.error.defaultColor as Color,
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
      );

  static AppBasicInline alert(
    String text, {
    double iconSize = _iconSize,
    MainAxisSize mainAxisSize = _mainAxisSize,
    MainAxisAlignment mainAxisAlignment = _mainAxisAlignment,
  }) =>
      AppBasicInline(
        iconData: AppIcons.alert,
        iconColor: InterfaceColors.alert.defaultColor as Color,
        text: text,
        iconSize: iconSize,
        textColor: InterfaceColors.alert.defaultColor as Color,
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
      );

  static AppBasicInline success(
    String text, {
    double iconSize = _iconSize,
    MainAxisSize mainAxisSize = _mainAxisSize,
    MainAxisAlignment mainAxisAlignment = _mainAxisAlignment,
  }) =>
      AppBasicInline(
        iconData: AppIcons.check,
        iconColor: InterfaceColors.success.defaultColor as Color,
        text: text,
        iconSize: iconSize,
        textColor: InterfaceColors.success.defaultColor as Color,
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
      );

  static AppBasicInline info(
    String text, {
    double iconSize = _iconSize,
    MainAxisSize mainAxisSize = _mainAxisSize,
    MainAxisAlignment mainAxisAlignment = _mainAxisAlignment,
  }) =>
      AppBasicInline(
        iconData: AppIcons.info,
        iconColor: InterfaceColors.action.defaultColor as Color,
        text: text,
        iconSize: iconSize,
        textColor: InterfaceColors.action.defaultColor as Color,
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
      );
}
