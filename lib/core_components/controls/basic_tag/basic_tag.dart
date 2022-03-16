import 'package:app_ui/core_components/views/tags/tag.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';

class AppBasicTag extends StatelessWidget {
  const AppBasicTag(
      {Key? key,
      this.selectedColor,
      this.unselectedColor,
      this.selected = true,
      this.selectedTextColor,
      this.unselectedTextColor})
      : super(key: key);

  final Color? selectedColor;

  final Color? unselectedColor;

  final Color? selectedTextColor;

  final Color? unselectedTextColor;

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AppTag(
        text: "Epargne",
        padding: const EdgeInsets.only(
          top: 6,
          bottom: 6,
          left: 12,
          right: 12,
        ),
        radius: 8,
        fontSize: 12.5,
        textAndIconColor: selected
            ? (selectedTextColor ?? Colors.white)
            : (unselectedTextColor ?? InterfaceColors.action.defaultColor!),
        backGroundColor: selected
            ? (selectedColor ?? InterfaceColors.action.defaultColor!)
            : (unselectedColor ?? InterfaceColors.action.specialColor!),
      ),
    );
  }
}
