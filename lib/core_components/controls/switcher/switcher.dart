import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';

class AppSwitcher extends StatelessWidget {
  const AppSwitcher({
    Key? key,
    required this.onChanged,
    required this.value,
    this.scale = 0.8,
  }) : super(key: key);

  final Function(bool value)? onChanged;

  final bool value;
  final double? scale;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: CupertinoSwitch(
        value: value,
        activeColor: InterfaceColors.action.defaultColor,
        onChanged: onChanged,
      ),
    );
  }
}
