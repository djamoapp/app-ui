import 'package:app_ui_m2/core/enums/standard_button_style.dart';
import 'package:app_ui_m2/core_components/controls/buttons/standard_buttons/standard_button.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart' as t;
import 'package:flutter/material.dart';

class StandardButtons {
  StandardButtons._();

  static Widget large({
    Key? key,
    StandardButtonStyle style = StandardButtonStyle.filled,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String label = "Button",
    bool enabled = true,
    bool enabledShadow = true,
    double? labelSize,
    double prefixIconSize = 20,
    double suffixIconSize = 12,
    double borderRadius = 24,
    Function()? onPressed,
    Color? enabledColor,
    Color? enabledLabelColor,
    Color? disabledColor,
    Color? disabledLabelColor,
    Color? enabledIconColor,
    Color? disabledIconColor,
    bool isLoading = false,
    EdgeInsetsGeometry? padding,
    Widget Function(BuildContext)? childBuilder,
  }) =>
      Builder(builder: (context) {
        return StandardButton(
          key: key,
          label: label,
          enabled: enabled,
          prefixIcon: prefixIcon,
          style: style,
          suffixIcon: suffixIcon,
          textStyle: t.AppTypography.title(context).small!.copyWith(
                fontSize: labelSize,
              ),
          prefixIconSize: prefixIconSize,
          suffixIconSize: suffixIconSize,
          onPressed: onPressed,
          borderRadius: borderRadius,
          enabledColor: enabledColor,
          enabledShadow: enabledShadow,
          enabledLabelColor: enabledLabelColor,
          disabledColor: disabledColor,
          disabledLabelColor: disabledLabelColor,
          enabledIconColor: enabledIconColor,
          disabledIconColor: disabledIconColor,
          isLoading: isLoading,
          height: 40,
          width: double.minPositive,
          padding: padding,
          childBuilder: childBuilder,
        );
      });

  static Widget medium({
    Key? key,
    StandardButtonStyle style = StandardButtonStyle.filled,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String label = "Button",
    bool enabled = true,
    bool enabledShadow = true,
    double? labelSize,
    double prefixIconSize = 13.33,
    double suffixIconSize = 8,
    double borderRadius = 16,
    Function()? onPressed,
    Color? enabledColor,
    Color? enabledLabelColor,
    Color? disabledColor,
    Color? disabledLabelColor,
    Color? enabledIconColor,
    Color? disabledIconColor,
    bool isLoading = false,
    EdgeInsetsGeometry? padding,
    Widget Function(BuildContext)? childBuilder,
  }) =>
      Builder(builder: (context) {
        return StandardButton(
          key: key,
          label: label,
          enabled: enabled,
          prefixIcon: prefixIcon,
          style: style,
          suffixIcon: suffixIcon,
          textStyle: t.AppTypography.label(context).bSmall!.copyWith(
                fontSize: labelSize,
              ),
          prefixIconSize: prefixIconSize,
          suffixIconSize: prefixIconSize,
          onPressed: onPressed,
          borderRadius: borderRadius,
          enabledColor: enabledColor,
          enabledShadow: enabledShadow,
          enabledLabelColor: enabledLabelColor,
          disabledColor: disabledColor,
          disabledLabelColor: disabledLabelColor,
          enabledIconColor: enabledIconColor,
          disabledIconColor: disabledIconColor,
          isLoading: isLoading,
          height: 32,
          width: double.minPositive,
          padding: padding,
          childBuilder: childBuilder,
        );
      });

  static Widget small({
    Key? key,
    StandardButtonStyle style = StandardButtonStyle.filled,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String label = "Button",
    bool enabled = true,
    bool enabledShadow = true,
    double prefixIconSize = 11.67,
    double? labelSize,
    double suffixIconSize = 6,
    double borderRadius = 16,
    Function()? onPressed,
    Color? enabledColor,
    Color? enabledLabelColor,
    Color? disabledColor,
    Color? disabledLabelColor,
    Color? enabledIconColor,
    Color? disabledIconColor,
    bool isLoading = false,
    EdgeInsetsGeometry? padding,
    Widget Function(BuildContext)? childBuilder,
  }) =>
      Builder(builder: (context) {
        return StandardButton(
          key: key,
          label: label,
          enabled: enabled,
          prefixIcon: prefixIcon,
          style: style,
          suffixIcon: suffixIcon,
          textStyle: t.AppTypography.body(context)
              .bTiny!
              .copyWith(fontSize: labelSize),
          prefixIconSize: prefixIconSize,
          suffixIconSize: suffixIconSize,
          onPressed: onPressed,
          borderRadius: borderRadius,
          enabledColor: enabledColor,
          enabledShadow: enabledShadow,
          enabledLabelColor: enabledLabelColor,
          disabledColor: disabledColor,
          disabledLabelColor: disabledLabelColor,
          enabledIconColor: enabledIconColor,
          disabledIconColor: disabledIconColor,
          isLoading: isLoading,
          height: 22,
          width: double.minPositive,
          padding: padding,
          childBuilder: childBuilder,
        );
      });
}
