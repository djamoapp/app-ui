import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/core_components/controls/buttons/standard_buttons/standard_button.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class StandardButtons {
  StandardButtons._();

  static StandardButton large({
    StandardButtonStyle style = StandardButtonStyle.filled,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String label = "Button",
    bool enabled = true,
    double prefixIconSize = 20,
    double suffixIconSize = 12,
    double borderRadius = 24,
    Function()? onPressed,
  }) =>
      StandardButton(
        label: label,
        enabled: enabled,
        prefixIcon: prefixIcon,
        style: style,
        suffixIcon: suffixIcon,
        textStyle: t.AppTypography.title!.small!,
        prefixIconSize: prefixIconSize,
        suffixIconSize: suffixIconSize,
        onPressed: onPressed,
        borderRadius: borderRadius,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 8.5,
          bottom: 8.5,
        ),
      );

  static StandardButton medium({
    StandardButtonStyle style = StandardButtonStyle.filled,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String label = "Button",
    bool enabled = true,
    double prefixIconSize = 13.33,
    double suffixIconSize = 8,
    double borderRadius = 16,
    Function()? onPressed,
  }) =>
      StandardButton(
        label: label,
        enabled: enabled,
        prefixIcon: prefixIcon,
        style: style,
        suffixIcon: suffixIcon,
        textStyle: t.AppTypography.label!.bSmall!,
        prefixIconSize: prefixIconSize,
        suffixIconSize: prefixIconSize,
        onPressed: onPressed,
        borderRadius: borderRadius,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 7,
          bottom: 7,
        ),
      );

  static StandardButton small({
    StandardButtonStyle style = StandardButtonStyle.filled,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String label = "Button",
    bool enabled = true,
    double prefixIconSize = 11.67,
    double suffixIconSize = 6,
    double borderRadius = 16,
    Function()? onPressed,
  }) =>
      StandardButton(
        label: label,
        enabled: enabled,
        prefixIcon: prefixIcon,
        style: style,
        suffixIcon: suffixIcon,
        textStyle: style != StandardButtonStyle.text
            ? t.AppTypography.body!.bTiny!
            : t.AppTypography.label!.small!,
        prefixIconSize: prefixIconSize,
        suffixIconSize: suffixIconSize,
        onPressed: onPressed,
        borderRadius: borderRadius,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 4,
          bottom: 4,
        ),
      );
}
