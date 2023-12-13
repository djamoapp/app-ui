import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:flutter/material.dart';

class AppSwitcher extends StatelessWidget {
  const AppSwitcher({
    Key? key,
    required this.onChanged,
    required this.value,
    this.scale = 0.8,
    this.enabled = true,
    this.activeSwitcherColor,
  }) : super(key: key);

  final Function(bool value)? onChanged;

  final bool value;
  final double? scale;
  final bool enabled;

  final Color? activeSwitcherColor;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale ?? 0.8,
      child: CupertinoSwitch(
        value: value,
        thumbColor: Colors.white,
        activeColor: enabled ? activeSwitcherColor ?? InterfaceColors.action.defaultColor : InterfaceColors.action.disabledColor,
        trackColor: enabled ? NeutralColors.bordersHoverColor : NeutralColors.neutral200,
        onChanged: enabled ? onChanged : null,
      ),
    );
  }
}
