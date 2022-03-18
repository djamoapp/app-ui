import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:flutter/material.dart';

class AppCircleIcon extends StatelessWidget {
  const AppCircleIcon({
    Key? key,
    required this.icon,
    this.backgroundColor,
    this.iconSize = 14,
    this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final Color? backgroundColor;
  final double iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? InterfaceColors.action.specialColor,
      ),
      padding: EdgeInsets.all(iconSize / 1.5),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor ?? InterfaceColors.action.defaultColor,
      ),
    );
  }
}
