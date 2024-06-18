import 'package:app_ui_m2/core/constants/constants.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/migration/migration.dart';
import 'package:flutter/material.dart';

class AppTextStyle extends TextStyle {
  AppTextStyle(BuildContext context,
      {String fontFamily = kFontFamily,
      required double fontSize,
      required double lineHeight,
      FontStyle? fontStyle,
      Color color = NeutralColors.neutral900,
      FontWeight? fontWeight})
      : super(
          fontFamily: useAppUIMigrate(
            context,
            M2: fontFamily,
            M3: "GTWalsheimPro",
          ),
          fontSize: fontSize,
          height: lineHeight,
          fontStyle: fontStyle,
          color: color,
          fontWeight: fontWeight,
          package: kPackageName,
        );
}
