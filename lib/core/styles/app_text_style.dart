import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle extends TextStyle {
  const AppTextStyle(
      {String fontFamily = kFontFamily,
      required double fontSize,
      required double lineHeight,
      FontStyle? fontStyle,
      Color color = NeutralColors.neutral900,
      FontWeight? fontWeight})
      : super(
          fontFamily: fontFamily,
          fontSize: fontSize,
          height: lineHeight,
          fontStyle: fontStyle,
          color: color,
          fontWeight: fontWeight,
          package: kPackageName,
        );
}
