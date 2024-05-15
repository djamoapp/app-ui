import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({
    Key? key,
    this.color,
    this.size = 30,
    this.progressWidth = 2,
  }) : super(key: key);

  final Color? color;
  final double size;
  final double progressWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        color: color ?? InterfaceColors.action.defaultColor,
        strokeWidth: progressWidth,
      ),
    );
  }
}
