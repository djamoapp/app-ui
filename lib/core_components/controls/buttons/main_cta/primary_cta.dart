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
  }) : super(key: key);

  final Function()? onPressed;

  final String label;

  final TextOverflow labelOverflow;

  final bool isLoading;

  final bool enabled;

  final EdgeInsetsGeometry padding;

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
        color: InterfaceColors.action.defaultColor,
        disabledColor: InterfaceColors.action.disabledColor,
        minWidth: double.infinity,
        onPressed: enabled && !isLoading ? onPressed ?? () {} : null,
        highlightColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: isLoading
            ? AppLoader(
                size: 20,
                color: Colors.white,
              )
            : Text(
                label,
                style: t.AppTypography.title!.small!.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                overflow: labelOverflow,
              ),
      ),
    );
  }
}
