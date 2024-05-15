import 'package:app_ui_m2/core_components/views/loader/loader.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart' as t;
import 'package:flutter/material.dart';

class PrimaryCTA extends StatelessWidget {
  const PrimaryCTA({
    Key? key,
    this.onPressed,
    this.label = "Confirmer",
    this.isLoading = false,
    this.enabled = true,
    this.enabledShadow = true,
    this.labelOverflow = TextOverflow.ellipsis,
    this.padding = EdgeInsets.zero,
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

  final bool enabledShadow;

  final EdgeInsetsGeometry padding;

  final Color? enabledColor;

  final Color? disabledColor;

  final Color? enabledLabelColor;

  final Color? disabledLabelColor;

  final Color? progressColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: MaterialButton(
        height: 40,
        elevation: 0,
        highlightElevation: 0,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: padding,
        color: enabledColor ?? InterfaceColors.action.defaultColor,
        disabledColor: disabledColor ?? InterfaceColors.action.disabledColor,
        minWidth: double.infinity,
        onPressed: enabled && !isLoading ? onPressed ?? () {} : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: isLoading
            ? AppLoader(
                size: 20,
                color: progressColor ?? Colors.white,
              )
            : childBuilder?.call() ??
                Text(
                  label,
                  style: t.AppTypography.title!.small!.copyWith(
                    color: enabled && !isLoading
                        ? enabledLabelColor ?? Colors.white
                        : disabledLabelColor ?? Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  overflow: labelOverflow,
                ),
      ),
    );
  }
}
