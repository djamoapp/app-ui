import 'package:app_ui_m2/core/constants/constants.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
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
    this.onTap,
    this.onTapOutside,
    this.hideCurrency = false,
    this.textAlign = TextAlign.end,
    this.textStyle,
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

  final TextStyle? textStyle;

  final String? currency;

  final FocusNode? focusNode;

  final TextAlign textAlign;

  final bool enabled;

  final void Function()? onTap;

  final void Function(PointerDownEvent)? onTapOutside;
  final bool hideCurrency;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: TextFormField(
        onTap: onTap,
        onTapOutside: onTapOutside,
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
              AppTypography.bigger(context).large!.copyWith(
                    color: NeutralColors.bordersHoverColor,
                  ),
          border: InputBorder.none,
          suffixIcon: hideCurrency
              ? SizedBox.shrink()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      currency ?? kDeviseSymbol,
                      style: AppTypography.headLine(context).medium!.copyWith(
                            color: NeutralColors.bordersHoverColor,
                          ),
                    ),
                  ],
                ),
        ),
        textAlign: textAlign,
        cursorColor: cursorColor ?? InterfaceColors.action.defaultColor,
        style: textStyle ??
            AppTypography.bigger(context).large!.copyWith(
                  color: InterfaceColors.action.defaultColor,
                ),
      ),
    );
  }
}
