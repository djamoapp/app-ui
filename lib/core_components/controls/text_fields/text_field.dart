import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/views/system_messages/inline/basic_inline.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    this.validator,
    this.placeHolderText = "Placeholder Text",
    this.controller,
    this.onChanged,
    this.enabled = true,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLength,
    this.inputFormatters,
    this.keyboardType,
    this.errorText,
    this.maxLines = 1,
    this.autoValidateMode,
    this.autocorrect,
    this.cursorColor,
  }) : super(key: key);

  final String? Function(String? value)? validator;

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

  final AutovalidateMode? autoValidateMode;

  final bool? autocorrect;

  final Color? cursorColor;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _errorText = widget.errorText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: t.AppTypography.label!.bSmall,
          ),
          AppGaps.xs,
        ],
        Stack(
          children: [
            TextFormField(
              autovalidateMode:
                  widget.autoValidateMode,
              autocorrect: widget.autocorrect ?? false,
              keyboardType: widget.keyboardType,
              maxLines: widget.maxLines,
              maxLength: widget.maxLength,
              inputFormatters: widget.inputFormatters,
              style: t.AppTypography.label!.large,
              validator: (value) {
                setState(() {
                  _errorText = widget.validator?.call(value);
                });
                return _errorText == null ? null : "";
              },
              controller: widget.controller,
              onChanged: widget.onChanged,
              cursorColor:
                  widget.cursorColor ?? InterfaceColors.action.defaultColor,
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
                contentPadding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 11,
                  bottom: 11,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: NeutralColors.formBordersColor,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: NeutralColors.formBordersColor,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: InterfaceColors.action.defaultColor!,
                    width: 1,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: InterfaceColors.error.defaultColor!,
                    width: 1,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: InterfaceColors.error.defaultColor!,
                    width: 1,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 0,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            if (_errorText != null) ...[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap((widget.maxLines * 24) + 22 + 6),
                  AppBasicInline(
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
    );
  }
}
