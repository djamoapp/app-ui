import 'package:app_ui/core_components/views/tags/tag.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';

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
        textStyle: labelStyle,
        padding: this.padding ??
            const EdgeInsets.only(
              top: 6,
              bottom: 6,
              left: 12,
              right: 12,
            ),
        radius: 8,
        textAndIconColor: this.selected
            ? (this.selectedTextColor ?? Colors.white)
            : (this.unselectedTextColor ??
                InterfaceColors.action.defaultColor!),
        backGroundColor: this.selected && this.enable
            ? (this.selectedColor ?? InterfaceColors.action.defaultColor!)
            : !this.selected && this.enable
                ? (this.unselectedColor ?? InterfaceColors.action.specialColor!)
                : NeutralColors.disabledBackGroundColor,
      ),
    );
  }
}
