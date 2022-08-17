import 'package:app_ui/core/enums/standard_button_style.dart';
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
    this.height,
    this.width,
    this.padding,
    this.progressColor,
  }) : super(key: key);

  final StandardButtonStyle style;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
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
  final Color? progressColor;

  @override
  Widget build(BuildContext context) {
    return style == StandardButtonStyle.outlined ||
            style == StandardButtonStyle.outlinedLight
        ? OutlinedButton(
            onPressed: enabled && !isLoading ? onPressed ?? () {} : null,
            child: _getChild(),
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              side: MaterialStateProperty.resolveWith(
                (states) => BorderSide(
                  width: 2,
                  color: enabled && !isLoading
                      ? _getEnabledColor
                      : _getDisabledColor,
                ),
              ),
              elevation: MaterialStateProperty.resolveWith(
                (states) => 0,
              ),
              shape: MaterialStateProperty.resolveWith(
                (states) => RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              minimumSize: MaterialStateProperty.resolveWith(
                (states) => Size(width!, height!),
              ),
              overlayColor: MaterialStateProperty.resolveWith(
                (states) => InterfaceColors.action.specialColor!.withOpacity(
                  0.5,
                ),
              ),
            ),
          )
        : Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow:
                  enabled && !isLoading && style == StandardButtonStyle.filled
                      ? [
                          BoxShadow(
                            color: InterfaceColors.action.defaultColor!
                                .withOpacity(0.32),
                            offset: const Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 0,
                          ),
                        ]
                      : null,
            ),
            child: MaterialButton(
              height: height,
              minWidth: width,
              elevation: 0,
              highlightElevation: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: enabled && !isLoading ? onPressed ?? () {} : null,
              color: _getEnabledColor,
              disabledColor: _getDisabledColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: _getChild(),
            ),
          );
  }

  Widget _getChild() => isLoading
      ? AppLoader(
          size: 20,
          color: progressColor ?? _getDisabledIconColor,
        )
      : Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) ...[
              Icon(
                prefixIcon,
                size: prefixIconSize,
                color: enabled && !isLoading
                    ? _getEnabledIconColor
                    : _getDisabledIconColor,
              ),
              AppGaps.xs,
            ],
            Text(
              label,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: textStyle.copyWith(
                color: enabled && !isLoading
                    ? _getEnabledLabelColor
                    : _getDisabledLabelColor,
              ),
            ),
            if (suffixIcon != null) ...[
              AppGaps.xs,
              Icon(
                suffixIcon,
                size: suffixIconSize,
                color: enabled && !isLoading
                    ? _getEnabledIconColor
                    : _getDisabledIconColor,
              ),
            ]
          ],
        );

  Color get _getEnabledColor {
    if (enabledColor != null) {
      return enabledColor!;
    }
    if (style == StandardButtonStyle.filled ||
        style == StandardButtonStyle.outlined) {
      return InterfaceColors.action.defaultColor!;
    } else if (style == StandardButtonStyle.text) {
      return Colors.transparent;
    } else {
      return InterfaceColors.action.specialColor!;
    }
  }

  Color get _getDisabledColor {
    if (disabledColor != null) {
      return disabledColor!;
    }
    if (style == StandardButtonStyle.filledLight) {
      return InterfaceColors.action.specialColor!;
    } else if (style == StandardButtonStyle.text) {
      return Colors.transparent;
    } else {
      return InterfaceColors.action.disabledColor!;
    }
  }

  Color get _getEnabledLabelColor {
    if (enabledLabelColor != null) {
      return enabledLabelColor!;
    }
    if (style == StandardButtonStyle.filled) {
      return Colors.white;
    } else {
      return InterfaceColors.action.defaultColor!;
    }
  }

  Color get _getDisabledLabelColor {
    if (disabledLabelColor != null) {
      return disabledLabelColor!;
    }
    if (style == StandardButtonStyle.filled) {
      return Colors.white;
    } else {
      return InterfaceColors.action.disabledColor!;
    }
  }

  Color get _getEnabledIconColor {
    if (enabledIconColor != null) {
      return enabledIconColor!;
    }
    if (style == StandardButtonStyle.filled) {
      return Colors.white;
    } else {
      return InterfaceColors.action.defaultColor!;
    }
  }

  Color get _getDisabledIconColor {
    if (disabledIconColor != null) {
      return disabledIconColor!;
    }
    if (style == StandardButtonStyle.filled) {
      return Colors.white;
    } else {
      return InterfaceColors.action.disabledColor!;
    }
  }
}
