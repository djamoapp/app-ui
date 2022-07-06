import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';

class StandardButton extends StatelessWidget {
  const StandardButton({
    Key? key,
    this.label = "Button",
    this.enabled = true,
    this.prefixIcon,
    required this.style,
    this.suffixIcon,
    required this.textStyle,
    this.prefixIconSize = 24,
    this.suffixIconSize = 24,
    this.onPressed,
    this.borderRadius = 0,
    this.isLoading = false,
    this.enabledColor,
    this.enabledLabelColor,
    this.disabledColor,
    this.disabledLabelColor,
    this.enabledIconColor,
    this.disabledIconColor,
  }) : super(key: key);

  final StandardButtonStyle style;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String label;
  final bool enabled;
  final TextStyle textStyle;
  final double prefixIconSize;
  final double suffixIconSize;
  final double borderRadius;
  final Function()? onPressed;
  final bool isLoading;
  final Color? enabledColor;
  final Color? enabledLabelColor;
  final Color? disabledColor;
  final Color? disabledLabelColor;
  final Color? enabledIconColor;
  final Color? disabledIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppSpacings.m - (style == StandardButtonStyle.outlined ? 2 : 0),
        right: AppSpacings.m - (style == StandardButtonStyle.outlined ? 2 : 0),
        top: AppSpacings.s - (style == StandardButtonStyle.outlined ? 2 : 0),
        bottom: AppSpacings.s - (style == StandardButtonStyle.outlined ? 2 : 0),
      ),
      decoration: style == StandardButtonStyle.filled
          ? _filledDecoration
          : style == StandardButtonStyle.filledLight
              ? _filledLightDecoration
              : style == StandardButtonStyle.outlined
                  ? _outlinedDecoration
                  : null,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled && !isLoading ? onPressed : null,
          highlightColor: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          child: isLoading
              ? Center(
                  child: AppLoader(
                    size: 20,
                    color: style == StandardButtonStyle.filled
                        ? Colors.white
                        : null,
                  ),
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
                            : enabled && !isLoading
                                ? enabledIconColor ??
                                    InterfaceColors.action.defaultColor
                                : disabledIconColor ??
                                    InterfaceColors.action.disabledColor,
                      ),
                      AppGaps.xs,
                    ],
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: textStyle.copyWith(
                        color: style == StandardButtonStyle.filled
                            ? Colors.white
                            : enabled && !isLoading
                                ? enabledLabelColor ??
                                    InterfaceColors.action.defaultColor
                                : disabledLabelColor ??
                                    InterfaceColors.action.disabledColor,
                      ),
                    ),
                    if (suffixIcon != null) ...[
                      AppGaps.xs,
                      Icon(
                        suffixIcon,
                        size: suffixIconSize,
                        color: style == StandardButtonStyle.filled
                            ? Colors.white
                            : enabled && !isLoading
                                ? InterfaceColors.action.defaultColor
                                : InterfaceColors.action.disabledColor,
                      ),
                    ]
                  ],
                ),
        ),
      ),
    );
  }

  BoxDecoration get _filledDecoration => BoxDecoration(
        color: enabled
            ? enabledColor ?? InterfaceColors.action.defaultColor
            : disabledColor ?? InterfaceColors.action.disabledColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: enabled
            ? List<BoxShadow>.from(
                [
                  BoxShadow(
                    color: InterfaceColors.action.defaultColor!
                        .withAlpha(81.6.round()),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              )
            : null,
      );

  BoxDecoration get _filledLightDecoration => BoxDecoration(
        color: enabled
            ? enabledColor ?? InterfaceColors.action.specialColor
            : disabledColor ?? InterfaceColors.action.specialColor,
        borderRadius: BorderRadius.circular(borderRadius),
      );

  BoxDecoration get _outlinedDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: enabled && !isLoading
              ? enabledColor ?? InterfaceColors.action.defaultColor!
              : disabledColor ?? InterfaceColors.action.disabledColor!,
          width: 2,
        ),
      );
}
