import 'package:app_ui_m2/core_components/views/tags/tag.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppBasicTag extends StatelessWidget {
  const AppBasicTag({
    Key? key,
    this.selectedColor,
    this.unselectedColor,
    this.selected = false,
    this.selectedTextColor,
    this.unselectedTextColor,
    this.label = "Label",
    this.onSelected,
    this.labelStyle,
    this.padding,
    this.enable = true,
    this.radius = 40,
  }) : super(key: key);

  final Color? selectedColor;

  final Color? unselectedColor;

  final Color? selectedTextColor;

  final Color? unselectedTextColor;

  final bool selected;

  final String label;

  final Function(String)? onSelected;

  final TextStyle? labelStyle;

  final EdgeInsetsGeometry? padding;

  final bool enable;

  final double? radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (this.onSelected != null && enable) {
          this.onSelected!(this.label);
        }
      },
      child: AppTag(
        text: this.label,
        textStyle: labelStyle ?? AppTypography.body?.bSmall,
        padding: this.padding ??
            const EdgeInsets.only(
              top: AppSpacings.s,
              bottom: AppSpacings.s,
              left: AppSpacings.m,
              right: AppSpacings.m,
            ),
        radius: radius,
        textAndIconColor: this.selected && this.enable
            ? (this.selectedTextColor ?? Colors.white)
            : !this.selected && this.enable
                ? (this.unselectedTextColor ??
                    InterfaceColors.action.defaultColor!)
                : Colors.white,
        backGroundColor: this.selected && this.enable
            ? (this.selectedColor ?? InterfaceColors.action.defaultColor!)
            : !this.selected && this.enable
                ? (this.unselectedColor ?? InterfaceColors.action.specialColor!)
                : NeutralColors.disabledBackGroundColor,
      ),
    );
  }
}
