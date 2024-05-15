import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_icons.dart';
import 'package:flutter/material.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({
    Key? key,
    required this.value,
    this.onChanged,
    this.enabled = true,
  }) : super(key: key);

  final bool value;
  final bool enabled;
  final Function(bool value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onChanged != null && enabled) onChanged!(!value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: value
              ? (enabled
                  ? InterfaceColors.action.defaultColor
                  : InterfaceColors.action.disabledColor)
              : null,
          border: value
              ? null
              : Border.all(
                  width: 1,
                  color: enabled
                      ? NeutralColors.bordersHoverColor
                      : NeutralColors.neutral200,
                ),
        ),
        child: value
            ? const Icon(
                AppIcons.check,
                color: Colors.white,
                size: 10,
              )
            : null,
      ),
    );
  }
}
