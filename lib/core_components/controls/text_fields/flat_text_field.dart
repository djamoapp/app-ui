import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/views/white_box/app_white_box.dart';

import '../../../design_tokens/colors/interface_colors.dart';
import '../../../design_tokens/colors/neutral_colors.dart';
import '../../../design_tokens/iconography/app_icons.dart';
import '../../../design_tokens/layout_and_spacing/spacing.dart';
import '../../../design_tokens/typography/typography.dart';
import '../../views/system_messages/inline/basic_inline.dart';

class AppFlatTextField extends StatefulWidget {
  const AppFlatTextField(
      {Key? key,
      this.label,
      required this.placeHolderText,
      this.controller,
      this.onChanged,
      this.enabled = true,
      this.prefixIcon,
      this.suffixIcon,
      this.maxLength,
      this.inputFormatters,
      this.keyboardType,
      this.errorText,
      this.maxLines = 1,
      this.validator})
      : super(key: key);

  final String? label;

  final String placeHolderText;

  final TextEditingController? controller;

  final void Function(String value)? onChanged;

  final bool enabled;

  final Widget? prefixIcon;

  final Widget? suffixIcon;

  final int? maxLength;

  final List<TextInputFormatter>? inputFormatters;

  final TextInputType? keyboardType;

  final String? errorText;

  final int maxLines;

  final String? Function(String?)? validator;

  @override
  State<AppFlatTextField> createState() => _AppFlatTextFieldState();
}

class _AppFlatTextFieldState extends State<AppFlatTextField> {
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _errorText = widget.errorText;
  }

  @override
  Widget build(BuildContext context) {
    return AppWhiteBox(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 16,
        right: 16,
      ),
      color: widget.enabled ? Colors.white : NeutralColors.formBordersColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null) ...[
            Row(
              children: [
                AppSpacing.xs,
                Text(
                  widget.label!,
                  style: AppTypography.label!.bSmall!.copyWith(
                      color: widget.enabled
                          ? null
                          : NeutralColors.disabledBackGroundColor),
                ),
              ],
            ),
            AppSpacing.s,
          ],
          Stack(
            children: [
              TextFormField(
                keyboardType: widget.keyboardType,
                maxLines: widget.maxLines,
                maxLength: widget.maxLength,
                inputFormatters: widget.inputFormatters,
                style: AppTypography.title!.bMedium200!
                    .copyWith(color: NeutralColors.neutral900),
                validator: (value) {
                  setState(() {
                    _errorText = widget.validator?.call(value);
                  });
                  return _errorText == null ? null : "";
                },
                controller: widget.controller,
                onChanged: widget.onChanged,
                cursorColor: InterfaceColors.action.defaultColor,
                cursorHeight: 16,
                cursorWidth: 1,
                decoration: InputDecoration(
                  //errorMaxLines: 0,
                  errorText: _errorText != null ? "" : null,
                  prefixIcon: widget.prefixIcon,
                  suffixIcon: widget.suffixIcon,
                  enabled: widget.enabled,
                  filled: !widget.enabled,
                  //errorText: "\u26A0 Une erreur est survenue",
                  fillColor:
                      widget.enabled ? null : NeutralColors.formBordersColor,
                  hintText: widget.placeHolderText,
                  hintStyle: AppTypography.title!.bMedium200!.copyWith(
                      color: widget.enabled
                          ? NeutralColors.neutral200
                          : NeutralColors.bordersHoverColor),
                  contentPadding: const EdgeInsets.all(0),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: NeutralColors.formBordersColor,
                      width: 1,
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: NeutralColors.formBordersColor,
                      width: 1,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: InterfaceColors.action.defaultColor!,
                      width: 1,
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: InterfaceColors.error.defaultColor!,
                      width: 1,
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: InterfaceColors.error.defaultColor!,
                      width: 1,
                    ),
                  ),
                  disabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: NeutralColors.disabledBackGroundColor,
                    ),
                  ),
                ),
              ),
              if (_errorText != null) ...[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Gap((widget.maxLines * 24) + 22 + 6),
                    DjamoBasicInline(
                      iconData: AppIcons.alert,
                      textColor: InterfaceColors.error.defaultColor!,
                      iconColor: InterfaceColors.error.defaultColor!,
                      text: _errorText!,
                      iconSize: 13.55,
                    ),
                  ],
                )
              ]
            ],
          ),
        ],
      ),
    );
  }
}
