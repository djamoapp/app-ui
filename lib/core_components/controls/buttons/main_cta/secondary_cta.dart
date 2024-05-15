import 'package:app_ui_m2/core_components/views/loader/loader.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart' as t;
import 'package:flutter/material.dart';

class SecondaryCTA extends StatelessWidget {
  const SecondaryCTA({
    Key? key,
    this.onPressed,
    this.label = "Button",
    this.isLoading = false,
    this.enabled = true,
    this.labelOverflow = TextOverflow.ellipsis,
    this.withBorder = true,
    this.padding = EdgeInsets.zero,
    this.labelStyle,
    this.enabledColor,
    this.disabledColor,
    this.enabledLabelColor,
    this.disabledLabelColor,
    this.progressColor,
    this.childBuilder,
  }) : super(key: key);

  final Function()? onPressed;

  final Widget Function()? childBuilder;

  final String label;

  final TextOverflow labelOverflow;

  final bool isLoading;

  final bool enabled;

  final bool withBorder;

  final EdgeInsetsGeometry padding;

  final TextStyle? labelStyle;

  final Color? enabledColor;

  final Color? disabledColor;

  final Color? enabledLabelColor;

  final Color? disabledLabelColor;

  final Color? progressColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: enabled && !isLoading ? onPressed ?? () {} : null,
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.resolveWith(
          (states) => Size(
            double.infinity,
            40,
          ),
        ),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => InterfaceColors.action.specialColor!.withOpacity(0.5),
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        elevation: MaterialStateProperty.resolveWith(
          (states) => 0,
        ),
        side: MaterialStateProperty.resolveWith(
          (states) => withBorder
              ? BorderSide(
                  color: enabled && !isLoading
                      ? enabledColor ?? InterfaceColors.action.specialColor!
                      : disabledColor ?? InterfaceColors.action.disabledColor!,
                  width: 2,
                )
              : BorderSide.none,
        ),
        padding: MaterialStateProperty.resolveWith(
          (states) => padding,
        ),
      ),
      child: isLoading
          ? AppLoader(
              size: 20,
              color: progressColor ?? InterfaceColors.action.disabledColor,
            )
          : childBuilder?.call() ??
              Text(
                label,
                style: (labelStyle ?? t.AppTypography.title!.small)!.copyWith(
                  color: enabled && !isLoading
                      ? enabledLabelColor ?? InterfaceColors.action.defaultColor
                      : disabledLabelColor ??
                          InterfaceColors.action.disabledColor,
                ),
                textAlign: TextAlign.center,
                overflow: labelOverflow,
              ),
    );
  }
}
