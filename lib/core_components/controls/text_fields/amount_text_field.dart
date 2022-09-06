import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppAmountTextField extends StatelessWidget {
  const AppAmountTextField({
    Key? key,
    this.controller,
    this.validator,
    this.formatters,
    this.autoValidateMode,
    this.autocorrect,
    this.cursorColor,
    this.autoFocus = false,
    this.onChanged,
    this.keyboardType,
    this.initialValue,
    this.textCapitalization = TextCapitalization.none,
    this.placeHolderText,
    this.placeHolderStyle,
    this.currency,
    this.focusNode,
    this.enabled = true,
  }) : super(key: key);

  final TextEditingController? controller;

  final String? Function(String?)? validator;

  final List<TextInputFormatter>? formatters;

  final AutovalidateMode? autoValidateMode;

  final bool? autocorrect;

  final Color? cursorColor;

  final bool autoFocus;

  final void Function(String value)? onChanged;

  final TextInputType? keyboardType;

  final String? initialValue;

  final TextCapitalization textCapitalization;

  final String? placeHolderText;

  final TextStyle? placeHolderStyle;

  final String? currency;

  final FocusNode? focusNode;

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: TextFormField(
        focusNode: focusNode,
        textCapitalization: textCapitalization,
        initialValue: initialValue,
        autofocus: autoFocus,
        autovalidateMode: autoValidateMode,
        autocorrect: autocorrect ?? false,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType ??
            const TextInputType.numberWithOptions(
              signed: false,
              decimal: false,
            ),
        onChanged: onChanged,
        inputFormatters: formatters,
        decoration: InputDecoration(
          enabled: enabled,
          hintText: placeHolderText,
          hintStyle: placeHolderStyle ??
              AppTypography.bigger.large!.copyWith(
                color: NeutralColors.bordersHoverColor,
              ),
          border: InputBorder.none,
          suffixIcon: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                currency ?? kDeviseSymbol,
                style: AppTypography.headLine!.medium!.copyWith(
                  color: NeutralColors.bordersHoverColor,
                ),
              ),
            ],
          ),
        ),
        textAlign: TextAlign.end,
        cursorColor: cursorColor ?? InterfaceColors.action.defaultColor,
        style: AppTypography.bigger.large!.copyWith(
          color: InterfaceColors.action.defaultColor,
        ),
      ),
    );
  }
}
