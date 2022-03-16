import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';

class AppSwitcher extends StatelessWidget {
  const AppSwitcher({Key? key, required this.onChanged, required this.value})
      : super(key: key);

  final Function(bool value)? onChanged;

  final bool value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onChanged != null) onChanged!(!value);
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: value
              ? InterfaceColors.action.defaultColor
              : NeutralColors.bordersHoverColor,
        ),
        height: 16,
        width: 28,
        duration: const Duration(milliseconds: 100),
        child: AnimatedAlign(
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          duration: const Duration(milliseconds: 300),
          child: Container(
            margin: const EdgeInsets.only(
              left: 2,
              right: 2,
            ),
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
    );
  }
}
