import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';

class StandardButton extends StatelessWidget {
  const StandardButton({
    Key? key,
    this.labelText = "Button",
    this.enabled = true,
    this.prefixIcon,
    required this.style,
    this.suffixIcon,
    required this.textStyle,
    this.prefixIconSize = 24,
    this.suffixIconSize = 24,
    this.onPressed,
    this.borderRadius = 0,
    this.padding,
    this.isLoading = false,
  }) : super(key: key);

  final StandardButtonStyle style;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String labelText;
  final bool enabled;
  final TextStyle textStyle;
  final double prefixIconSize;
  final double suffixIconSize;
  final double borderRadius;
  final Function()? onPressed;
  final EdgeInsets? padding;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: style == StandardButtonStyle.filled
          ? _filledDecoration
          : style == StandardButtonStyle.outlined
              ? _outlinedDecoration
              : null,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled
              ? (isLoading ? null : onPressed)
              : (isLoading ? null : onPressed),
          highlightColor: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Padding(
            padding: padding ?? const EdgeInsets.all(8),
            child: isLoading
                ? AppLoader(
                    color: style == StandardButtonStyle.filled
                        ? Colors.white
                        : null,
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (prefixIcon != null) ...[
                        Icon(
                          prefixIcon,
                          size: prefixIconSize,
                          color: style == StandardButtonStyle.filled
                              ? Colors.white
                              : enabled
                                  ? InterfaceColors.action.defaultColor
                                  : InterfaceColors.action.disabledColor,
                        ),
                        AppSpacing.xs,
                      ],
                      Text(
                        labelText,
                        style: textStyle.copyWith(
                          color: style == StandardButtonStyle.filled
                              ? Colors.white
                              : enabled
                                  ? InterfaceColors.action.defaultColor
                                  : InterfaceColors.action.disabledColor,
                        ),
                      ),
                      if (suffixIcon != null) ...[
                        AppSpacing.xs,
                        Icon(
                          suffixIcon,
                          size: suffixIconSize,
                          color: style == StandardButtonStyle.filled
                              ? Colors.white
                              : enabled
                                  ? InterfaceColors.action.defaultColor
                                  : InterfaceColors.action.disabledColor,
                        ),
                      ]
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  BoxDecoration get _filledDecoration => BoxDecoration(
        color: enabled
            ? InterfaceColors.action.defaultColor
            : InterfaceColors.action.disabledColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: enabled
            ? List<BoxShadow>.from([
                BoxShadow(
                  color: InterfaceColors.action.defaultColor!
                      .withAlpha(81.6.round()),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ])
            : null,
      );

  BoxDecoration get _outlinedDecoration => BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: enabled
            ? InterfaceColors.action.defaultColor!
            : InterfaceColors.action.disabledColor!,
        width: 2,
      ));
}
