import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({Key? key, this.color, this.size = 30}) : super(key: key);

  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        color: color ?? InterfaceColors.action.defaultColor,
        strokeWidth: 2.5,
      ),
    );
  }
}
