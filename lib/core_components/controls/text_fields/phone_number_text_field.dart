import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:app_ui/core_components/controls/text_fields/text_field.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppPhoneNumberTextField extends StatefulWidget {
  const AppPhoneNumberTextField(
      {Key? key,
      this.enabled = true,
      this.onCountryChanged,
      this.onChanged,
      required this.controller,
      this.errorText,
      this.validator})
      : super(key: key);

  final bool enabled;

  final Function(Country? country)? onCountryChanged;

  final Function(String value)? onChanged;

  final TextEditingController controller;

  final String? errorText;

  final String? Function(String? value)? validator;

  @override
  State<AppPhoneNumberTextField> createState() =>
      _AppPhoneNumberTextFieldState();
}

class _AppPhoneNumberTextFieldState extends State<AppPhoneNumberTextField> {
  Country? country;

  @override
  void initState() {
    super.initState();
    _getDefaultCountry();
  }

  void _getDefaultCountry() async {
    Country? c = await getCountryByCountryCode(context, "CI");
    setState(() {
      country = c;
    });
  }

  final String _mask = "## ## ## ## ##";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () async {
            if (!widget.enabled) return;
            Country? c = await showCountryPickerDialog(context);
            if (c != null) {
              setState(() {
                country = c;
              });
            }
            if (widget.onCountryChanged != null) {
              widget.onCountryChanged!(country);
            }
          },
          child: Container(
            padding: const EdgeInsets.only(
              top: 13,
              bottom: 13,
              left: 8,
              right: 8,
            ),
            foregroundDecoration: widget.enabled
                ? null
                : const BoxDecoration(
                    color: NeutralColors.formBordersColor,
                    backgroundBlendMode: BlendMode.saturation,
                  ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: widget.enabled ? null : NeutralColors.formBordersColor,
              border: widget.enabled
                  ? Border.all(
                      color: NeutralColors.formBordersColor,
                    )
                  : null,
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    country == null ? "225" : country!.callingCode,
                    style: t.AppTypography.label!.large,
                  ),
                  const Gap(2),
                  if (country != null)
                    Image.asset(
                      country!.flag,
                      package: countryCodePackageName,
                      height: 10,
                      width: 15,
                    ),
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
        AppGaps.xs,
        Expanded(
          child: AppTextField(
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            placeHolderText: "Enter your phone number here",
            enabled: widget.enabled,
            controller: widget.controller,
            onChanged: widget.onChanged,
            validator: widget.validator,
            errorText: widget.errorText,
            inputFormatters: [
              MaskTextInputFormatter(
                mask: _mask,
                filter: {"#": RegExp(r'[0-9]')},
                type: MaskAutoCompletionType.lazy,
              ),
              LengthLimitingTextInputFormatter(_mask.length),
            ],
          ),
        ),
      ],
    );
  }
}
