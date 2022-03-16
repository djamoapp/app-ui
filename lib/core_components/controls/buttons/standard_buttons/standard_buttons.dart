import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/core_components/controls/buttons/standard_buttons/standard_button.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class StandardButtons {
  StandardButtons._();

  static StandardButton large(
          {StandardButtonStyle style = StandardButtonStyle.filled,
          IconData? prefixIcon,
          IconData? suffixIcon,
          String label = "Button",
          bool enabled = true,
          Function()? onPressed}) =>
      StandardButton(
        label: label,
        enabled: enabled,
        prefixIcon: prefixIcon,
        style: style,
        suffixIcon: suffixIcon,
        textStyle: t.AppTypography.title!.small!,
        prefixIconSize: 20,
        suffixIconSize: 12,
        onPressed: onPressed,
        borderRadius: 24,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 8.5,
          bottom: 8.5,
        ),
      );

  static StandardButton medium(
          {StandardButtonStyle style = StandardButtonStyle.filled,
          IconData? prefixIcon,
          IconData? suffixIcon,
          String label = "Button",
          bool enabled = true,
          Function()? onPressed}) =>
      StandardButton(
        label: label,
        enabled: enabled,
        prefixIcon: prefixIcon,
        style: style,
        suffixIcon: suffixIcon,
        textStyle: t.AppTypography.label!.bSmall!,
        prefixIconSize: 13.33,
        suffixIconSize: 8,
        onPressed: onPressed,
        borderRadius: 16,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 7,
          bottom: 7,
        ),
      );

  static StandardButton small(
          {StandardButtonStyle style = StandardButtonStyle.filled,
          IconData? prefixIcon,
          IconData? suffixIcon,
          String label = "Button",
          bool enabled = true,
          Function()? onPressed}) =>
      StandardButton(
        label: label,
        enabled: enabled,
        prefixIcon: prefixIcon,
        style: style,
        suffixIcon: suffixIcon,
        textStyle: style != StandardButtonStyle.text
            ? t.AppTypography.body!.bTiny!
            : t.AppTypography.label!.small!,
        prefixIconSize: 11.67,
        suffixIconSize: 6,
        onPressed: onPressed,
        borderRadius: 16,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 4,
          bottom: 4,
        ),
      );
}
