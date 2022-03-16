import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? InterfaceColors.action.defaultColor,
      strokeWidth: 2,
    );
  }
}
