import 'package:app_ui/core/models/typography_text_style.dart';
import 'package:app_ui/core/styles/app_text_style.dart';
import 'package:flutter/cupertino.dart';

class AppTypography {
  AppTypography._();

  static final TypographyTextStyle? body = TypographyTextStyle(
    large: const AppTextStyle(
      fontSize: 16,
      lineHeight: 20 / 16,
      fontWeight: FontWeight.w100,
    ),
    bMedium200: const AppTextStyle(
      fontSize: 14,
      lineHeight: 18 / 14,
      fontWeight: FontWeight.w400,
    ),
    bMedium100: const AppTextStyle(
      fontSize: 14,
      lineHeight: 18 / 14,
      fontWeight: FontWeight.normal,
    ),
    medium: const AppTextStyle(
      fontSize: 14,
      lineHeight: 18 / 14,
      fontWeight: FontWeight.w100,
    ),
    bSmall: const AppTextStyle(
      fontSize: 12.5,
      lineHeight: 16 / 12.5,
      fontWeight: FontWeight.w400,
    ),
    small: const AppTextStyle(
      fontSize: 12.5,
      lineHeight: 16 / 12.5,
      fontWeight: FontWeight.w100,
    ),
    bTiny: const AppTextStyle(
      fontSize: 10.5,
      lineHeight: 16 / 10.5,
      fontWeight: FontWeight.w400,
    ),
    tiny: const AppTextStyle(
      fontSize: 10.5,
      lineHeight: 16 / 10.5,
      fontWeight: FontWeight.w100,
    ),
  );

  static final TypographyTextStyle? label = TypographyTextStyle(
    large: const AppTextStyle(
      fontSize: 18,
      lineHeight: 22.5 / 18,
      fontWeight: FontWeight.w200,
    ),
    bMedium200: const AppTextStyle(
      fontSize: 16,
      lineHeight: 20 / 16,
      fontWeight: FontWeight.w400,
    ),
    bMedium100: const AppTextStyle(
      fontSize: 16,
      lineHeight: 20 / 16,
      fontWeight: FontWeight.w200,
    ),
    bSmall: const AppTextStyle(
      fontSize: 14,
      lineHeight: 18 / 14,
      fontWeight: FontWeight.w400,
    ),
    small: const AppTextStyle(
      fontSize: 14,
      lineHeight: 18 / 14,
      fontWeight: FontWeight.w200,
    ),
  );

  static final TypographyTextStyle? title = TypographyTextStyle(
    large: const AppTextStyle(
      fontSize: 22.5,
      lineHeight: 29 / 22.5,
      fontWeight: FontWeight.w400,
    ),
    bMedium200: const AppTextStyle(
      fontSize: 20,
      lineHeight: 26 / 20,
      fontWeight: FontWeight.bold,
    ),
    bMedium100: const AppTextStyle(
      fontSize: 20,
      lineHeight: 26 / 20,
      fontWeight: FontWeight.w500,
    ),
    medium: const AppTextStyle(
      fontSize: 20,
      lineHeight: 26 / 20,
      fontWeight: FontWeight.w400,
    ),
    small: const AppTextStyle(
      fontSize: 18,
      lineHeight: 22.5 / 18,
      fontWeight: FontWeight.w400,
    ),
  );

  static final TypographyTextStyle? headLine = TypographyTextStyle(
    large: const AppTextStyle(
      fontSize: 29,
      lineHeight: 37 / 29,
      fontWeight: FontWeight.w500,
    ),
    bLarge: const AppTextStyle(
      fontSize: 29,
      lineHeight: 37 / 29,
      fontWeight: FontWeight.bold,
    ),
    medium: const AppTextStyle(
      fontSize: 26,
      lineHeight: 34 / 26,
      fontWeight: FontWeight.bold,
    ),
  );
}
