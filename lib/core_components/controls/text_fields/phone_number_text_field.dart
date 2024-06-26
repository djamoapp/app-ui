import 'package:app_ui_m2/core_components/controls/text_fields/text_field.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart' as t;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class AppPhoneNumberTextField extends StatelessWidget {
  const AppPhoneNumberTextField({
    Key? key,
    this.enabled = true,
    this.onChanged,
    this.controller,
    this.errorText,
    this.validator,
    this.autoValidateMode,
    this.autocorrect,
    this.cursorColor,
    this.placeHolder = "Enter your phone number here",
    this.inputFormatters = const [],
    required this.countryCode,
    required this.countryflag,
    this.onCountryTap,
    this.autoFocus = false,
    this.keyboardType,
    this.initialValue,
    this.textCapitalization = TextCapitalization.none,
    this.onTap,
    this.onTapOutside,
  }) : super(key: key);

  final bool enabled;

  final Function(String value)? onChanged;

  final TextEditingController? controller;

  final String? errorText;

  final String? Function(String? value)? validator;

  final AutovalidateMode? autoValidateMode;

  final bool? autocorrect;

  final Color? cursorColor;

  final String placeHolder;

  final String countryCode;

  final Widget countryflag;

  final void Function()? onCountryTap;

  final List<TextInputFormatter>? inputFormatters;

  final bool autoFocus;

  final TextInputType? keyboardType;

  final String? initialValue;

  final TextCapitalization textCapitalization;

  final void Function()? onTap;

  final void Function(PointerDownEvent)? onTapOutside;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: enabled ? onCountryTap : null,
          child: Container(
            padding: const EdgeInsets.only(
              left: AppSpacings.s,
              right: AppSpacings.s,
            ),
            height: 49,
            foregroundDecoration: enabled
                ? null
                : BoxDecoration(
                    color: NeutralColors.formBordersColor,
                    backgroundBlendMode: BlendMode.saturation,
                    borderRadius: BorderRadius.circular(8),
                  ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: enabled ? Colors.white : NeutralColors.formBordersColor,
              border: enabled
                  ? Border.all(
                      color: NeutralColors.formBordersColor,
                    )
                  : null,
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    countryCode,
                    style: t.AppTypography.body(context).medium,
                  ),
                  const Gap(2),
                  countryflag,
                  const Gap(2),
                  const Icon(
                    CupertinoIcons.chevron_down,
                    color: NeutralColors.neutral900,
                    size: 14,
                  ),
                ],
              ),
            ),
          ),
        ),
        AppGapsM2.xs,
        Expanded(
          child: AppTextField(
            onTap: onTap,
            onTapOutside: onTapOutside,
            textCapitalization: textCapitalization,
            initialValue: initialValue,
            autoFocus: autoFocus,
            autoValidateMode: autoValidateMode,
            autocorrect: autocorrect ?? false,
            keyboardType: keyboardType ??
                const TextInputType.numberWithOptions(
                  signed: false,
                  decimal: false,
                ),
            placeHolderText: placeHolder,
            enabled: enabled,
            controller: controller,
            onChanged: onChanged,
            validator: validator,
            errorText: errorText,
            inputFormatters: inputFormatters,
          ),
        ),
      ],
    );
  }
}
