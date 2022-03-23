import 'package:app_ui/core/models/typography_text_style.dart';
import 'package:app_ui/core/styles/app_text_style.dart';
import 'package:flutter/cupertino.dart';

class AppTypography {
  AppTypography._();

  static final TypographyTextStyle? body = TypographyTextStyle(
    large: const AppTextStyle(
      fontSize: 18,
      lineHeight: 22 / 18,
      fontWeight: FontWeight.w300,
    ),
    bMedium200: const AppTextStyle(
      fontSize: 16,
      lineHeight: 20 / 16,
      fontWeight: FontWeight.w400,
    ),
    bMedium100: const AppTextStyle(
      fontSize: 16,
      lineHeight: 20 / 16,
      fontWeight: FontWeight.normal,
    ),
    medium: const AppTextStyle(
      fontSize: 16,
      lineHeight: 20 / 16,
      fontWeight: FontWeight.w300,
    ),
    bSmall: const AppTextStyle(
      fontSize: 14.5,
      lineHeight: 18 / 14.5,
      fontWeight: FontWeight.w500,
    ),
    small: const AppTextStyle(
      fontSize: 14.5,
      lineHeight: 18 / 14.5,
      fontWeight: FontWeight.w300,
    ),
    bTiny: const AppTextStyle(
      fontSize: 12.5,
      lineHeight: 16 / 12.5,
      fontWeight: FontWeight.w500,
    ),
    tiny: const AppTextStyle(
      fontSize: 12.5,
      lineHeight: 16 / 12.5,
      fontWeight: FontWeight.w300,
    ),
  );

  static final TypographyTextStyle? label = TypographyTextStyle(
    large: const AppTextStyle(
      fontSize: 20,
      lineHeight: 24.5 / 20,
      fontWeight: FontWeight.w400,
    ),
    bMedium200: const AppTextStyle(
      fontSize: 18,
      lineHeight: 22 / 18,
      fontWeight: FontWeight.w700,
    ),
    bMedium100: const AppTextStyle(
      fontSize: 18,
      lineHeight: 22 / 18,
      fontWeight: FontWeight.w500,
    ),
    medium: const AppTextStyle(
      fontSize: 18,
      lineHeight: 22 / 18,
      fontWeight: FontWeight.w400,
    ),
    bSmall: const AppTextStyle(
      fontSize: 16,
      lineHeight: 20 / 16,
      fontWeight: FontWeight.w500,
    ),
    small: const AppTextStyle(
      fontSize: 16,
      lineHeight: 20 / 16,
      fontWeight: FontWeight.w400,
    ),
  );

  static final TypographyTextStyle? title = TypographyTextStyle(
    large: const AppTextStyle(
      fontSize: 22.5,
      lineHeight: 29 / 22.5,
      fontWeight: FontWeight.w500,
    ),
    bMedium200: const AppTextStyle(
      fontSize: 20,
      lineHeight: 26 / 20,
      fontWeight: FontWeight.w700,
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
      fontSize: 20,
      lineHeight: 24.5 / 20,
      fontWeight: FontWeight.w500,
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
      fontWeight: FontWeight.w700,
    ),
    medium: const AppTextStyle(
      fontSize: 26,
      lineHeight: 34 / 26,
      fontWeight: FontWeight.w700,
    ),
  );

  static final TypographyTextStyle bigger = TypographyTextStyle(
    thin: const AppTextStyle(
      fontSize: 48,
      lineHeight: 56 / 48,
      fontWeight: FontWeight.w300,
    ),
    large: const AppTextStyle(
      fontSize: 48,
      lineHeight: 56 / 48,
      fontWeight: FontWeight.w500,
    ),
    bLarge: const AppTextStyle(
      fontSize: 48,
      lineHeight: 56 / 48,
      fontWeight: FontWeight.w700,
    ),
  );
}
