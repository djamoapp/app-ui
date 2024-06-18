import 'package:app_ui_m2/core/models/typography_text_style.dart';
import 'package:app_ui_m2/core/styles/app_text_style.dart';
import 'package:flutter/cupertino.dart';

class AppTypography {
  AppTypography._();

  static TypographyTextStyle body(BuildContext context) => TypographyTextStyle(
        large: AppTextStyle(
          context,
          fontSize: 18,
          lineHeight: 22 / 18,
          fontWeight: FontWeight.w300,
        ),
        bMedium200: AppTextStyle(
          context,
          fontSize: 16,
          lineHeight: 20 / 16,
          fontWeight: FontWeight.w400,
        ),
        bMedium100: AppTextStyle(
          context,
          fontSize: 16,
          lineHeight: 20 / 16,
          fontWeight: FontWeight.normal,
        ),
        medium: AppTextStyle(
          context,
          fontSize: 16,
          lineHeight: 20 / 16,
          fontWeight: FontWeight.w300,
        ),
        bSmall: AppTextStyle(
          context,
          fontSize: 14.5,
          lineHeight: 18 / 14.5,
          fontWeight: FontWeight.w500,
        ),
        small: AppTextStyle(
          context,
          fontSize: 14.5,
          lineHeight: 18 / 14.5,
          fontWeight: FontWeight.w300,
        ),
        bTiny: AppTextStyle(
          context,
          fontSize: 12.5,
          lineHeight: 16 / 12.5,
          fontWeight: FontWeight.w500,
        ),
        tiny: AppTextStyle(
          context,
          fontSize: 12.5,
          lineHeight: 16 / 12.5,
          fontWeight: FontWeight.w300,
        ),
      );

  static TypographyTextStyle label(BuildContext context) => TypographyTextStyle(
        large: AppTextStyle(
          context,
          fontSize: 20,
          lineHeight: 24.5 / 20,
          fontWeight: FontWeight.w400,
        ),
        bMedium200: AppTextStyle(
          context,
          fontSize: 18,
          lineHeight: 22 / 18,
          fontWeight: FontWeight.w700,
        ),
        bMedium100: AppTextStyle(
          context,
          fontSize: 18,
          lineHeight: 22 / 18,
          fontWeight: FontWeight.w500,
        ),
        medium: AppTextStyle(
          context,
          fontSize: 18,
          lineHeight: 22 / 18,
          fontWeight: FontWeight.w400,
        ),
        bSmall: AppTextStyle(
          context,
          fontSize: 16,
          lineHeight: 20 / 16,
          fontWeight: FontWeight.w500,
        ),
        small: AppTextStyle(
          context,
          fontSize: 16,
          lineHeight: 20 / 16,
          fontWeight: FontWeight.w400,
        ),
      );

  static TypographyTextStyle title(BuildContext context) => TypographyTextStyle(
        large: AppTextStyle(
          context,
          fontSize: 22.5,
          lineHeight: 29 / 22.5,
          fontWeight: FontWeight.w500,
        ),
        bMedium200: AppTextStyle(
          context,
          fontSize: 20,
          lineHeight: 26 / 20,
          fontWeight: FontWeight.w700,
        ),
        bMedium100: AppTextStyle(
          context,
          fontSize: 20,
          lineHeight: 26 / 20,
          fontWeight: FontWeight.w500,
        ),
        medium: AppTextStyle(
          context,
          fontSize: 20,
          lineHeight: 26 / 20,
          fontWeight: FontWeight.w400,
        ),
        small: AppTextStyle(
          context,
          fontSize: 20,
          lineHeight: 24.5 / 20,
          fontWeight: FontWeight.w500,
        ),
      );

  static TypographyTextStyle headLine(BuildContext context) =>
      TypographyTextStyle(
        large: AppTextStyle(
          context,
          fontSize: 29,
          lineHeight: 37 / 29,
          fontWeight: FontWeight.w500,
        ),
        bLarge: AppTextStyle(
          context,
          fontSize: 29,
          lineHeight: 37 / 29,
          fontWeight: FontWeight.w700,
        ),
        medium: AppTextStyle(
          context,
          fontSize: 26,
          lineHeight: 34 / 26,
          fontWeight: FontWeight.w700,
        ),
      );

  static TypographyTextStyle bigger(BuildContext context) =>
      TypographyTextStyle(
        thin: AppTextStyle(
          context,
          fontSize: 48,
          lineHeight: 56 / 48,
          fontWeight: FontWeight.w300,
        ),
        large: AppTextStyle(
          context,
          fontSize: 48,
          lineHeight: 56 / 48,
          fontWeight: FontWeight.w500,
        ),
        bLarge: AppTextStyle(
          context,
          fontSize: 48,
          lineHeight: 56 / 48,
          fontWeight: FontWeight.w700,
        ),
      );
}
