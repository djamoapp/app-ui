import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({Key? key, required this.value, this.onChanged})
      : super(key: key);

  final bool value;

  final Function(bool value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onChanged != null) onChanged!(!value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 16,
        width: 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: value ? InterfaceColors.action.defaultColor : null,
          border: value
              ? null
              : Border.all(
                  width: 1,
                  color: NeutralColors.bordersHoverColor,
                ),
        ),
        child: value
            ? const Icon(
                AppIcons.check,
                color: Colors.white,
                size: 7,
              )
            : null,
      ),
    );
  }
}
