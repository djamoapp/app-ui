import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:flutter/material.dart';

class AppRadio<T> extends StatelessWidget {
  const AppRadio({
    Key? key,
    required this.value,
    this.groupValue,
    this.onChanged,
    this.enabled = true,
  }) : super(key: key);

  final T value;

  final T? groupValue;

  final Function(T value)? onChanged;

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (enabled && onChanged != null) onChanged!(value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: value == groupValue
              ? (enabled
                  ? InterfaceColors.action.defaultColor
                  : InterfaceColors.action.disabledColor)
              : null,
          border: value == groupValue
              ? null
              : Border.all(
                  width: 1,
                  color: enabled
                      ? NeutralColors.bordersHoverColor
                      : NeutralColors.neutral200,
                ),
        ),
        child: value == groupValue
            ? Center(
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
