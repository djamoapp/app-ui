import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:app_ui/core_components/controls/buttons/standard_buttons/standard_button.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppSectionLabel extends StatelessWidget {
  const AppSectionLabel({
    Key? key,
    this.label = "Label Name",
    this.buttonLabel = "See all",
    this.onButtonTap,
    this.buttonPadding = const EdgeInsets.only(
      left: kDefaultPadding,
      right: kDefaultPadding,
      top: 7,
      bottom: 7,
    ),
    this.labelStyle,
    this.buttonLabelStyle,
  }) : super(key: key);

  final String label;

  final String buttonLabel;

  final EdgeInsets buttonPadding;

  final Function()? onButtonTap;

  final TextStyle? labelStyle;

  final TextStyle? buttonLabelStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: (labelStyle ?? AppTypography.title!.bMedium100)!.copyWith(
            color: NeutralColors.disabledBackGroundColor,
            fontSize: 16,
          ),
        ),
        if (onButtonTap != null)
          StandardButton(
            style: StandardButtonStyle.text,
            textStyle: buttonLabelStyle ?? AppTypography.label!.bSmall!,
            padding: buttonPadding,
            label: buttonLabel,
            onPressed: onButtonTap,
            borderRadius: kDefaultBorderRadius,
          ),
      ],
    );
  }
}
