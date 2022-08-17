import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class PrimaryCTA extends StatelessWidget {
  const PrimaryCTA({
    Key? key,
    this.onPressed,
    this.label = "Confirmer",
    this.isLoading = false,
    this.enabled = true,
    this.labelOverflow = TextOverflow.ellipsis,
    this.padding = EdgeInsets.zero,
    this.enabledColor,
    this.disabledColor,
    this.enabledLabelColor,
    this.disabledLabelColor,
    this.progressColor,
  }) : super(key: key);

  final Function()? onPressed;

  final String label;

  final TextOverflow labelOverflow;

  final bool isLoading;

  final bool enabled;

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
        boxShadow: enabled && !isLoading
            ? [
                BoxShadow(
                  color: InterfaceColors.action.defaultColor!.withOpacity(
                    0.32,
                  ),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ]
            : null,
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
            : Text(
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
