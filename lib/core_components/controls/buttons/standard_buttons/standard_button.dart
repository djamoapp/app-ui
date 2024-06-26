import 'package:app_ui_m2/core/enums/standard_button_style.dart';
import 'package:app_ui_m2/core_components/views/loader/loader.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  const StandardButton({
    Key? key,
    this.label = "Button",
    this.enabled = true,
    this.enabledShadow = true,
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
    this.childBuilder,
    this.borderWidth,
  }) : super(key: key);

  final StandardButtonStyle style;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String label;
  final bool enabled;
  final bool enabledShadow;
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
  final double? borderWidth;
  final Widget Function(BuildContext)? childBuilder;

  @override
  Widget build(BuildContext context) {
    return style == StandardButtonStyle.outlined ||
            style == StandardButtonStyle.outlinedLight
        ? OutlinedButton(
            onPressed: enabled && !isLoading ? onPressed ?? () {} : null,
            child: _getChild(context),
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              side: MaterialStateProperty.resolveWith(
                (states) => BorderSide(
                  width: this.borderWidth ?? 2,
                  color: enabled && !isLoading
                      ? _getEnabledColor
                      : _getDisabledColor,
                ),
              ),
              elevation: MaterialStateProperty.resolveWith(
                (states) => 0,
              ),
              padding: MaterialStateProperty.resolveWith((states) => padding),
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
            ),
            child: MaterialButton(
              padding: padding,
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
              child: _getChild(context),
            ),
          );
  }

  Widget _getChild(BuildContext context) => isLoading
      ? AppLoader(
          size: 20,
          color: progressColor ?? _getDisabledIconColor,
        )
      : childBuilder?.call(context) ??
          Row(
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
                AppGapsM2.xs,
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
                AppGapsM2.xs,
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
