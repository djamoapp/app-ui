import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';

class AppRadio<T> extends StatelessWidget {
  const AppRadio(
      {Key? key, required this.value, this.groupValue, this.onChanged})
      : super(key: key);

  final T value;

  final T? groupValue;

  final Function(T value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onChanged != null) onChanged!(value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 16,
        width: 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color:
              value == groupValue ? InterfaceColors.action.defaultColor : null,
          border: value == groupValue
              ? null
              : Border.all(
                  width: 1,
                  color: NeutralColors.bordersHoverColor,
                ),
        ),
        child: value == groupValue
            ? Center(
                child: Container(
                  height: 8,
                  width: 8,
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
