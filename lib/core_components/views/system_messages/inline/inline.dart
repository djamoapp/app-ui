import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/system_messages/inline/basic_inline.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';

class DjamoInline {
  DjamoInline._();

  static DjamoBasicInline error(String text) => DjamoBasicInline(
        iconData: AppIcons.close,
        iconColor: InterfaceColors.error.defaultColor as Color,
        text: text,
        textColor: InterfaceColors.error.defaultColor as Color,
      );

  static DjamoBasicInline alert(String text) => DjamoBasicInline(
        iconData: AppIcons.alert,
        iconColor: InterfaceColors.alert.defaultColor as Color,
        text: text,
        textColor: InterfaceColors.alert.defaultColor as Color,
      );

  static DjamoBasicInline success(String text) => DjamoBasicInline(
        iconData: AppIcons.check,
        iconColor: InterfaceColors.success.defaultColor as Color,
        text: text,
        textColor: InterfaceColors.success.defaultColor as Color,
      );

  static DjamoBasicInline info(String text) => DjamoBasicInline(
        iconData: AppIcons.info,
        iconColor: InterfaceColors.action.defaultColor as Color,
        text: text,
        textColor: InterfaceColors.action.defaultColor as Color,
      );
}
