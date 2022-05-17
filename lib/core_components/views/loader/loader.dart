import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({Key? key, this.color, this.size = 30, this.progressWidth = 2,}) : super(key: key);

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
