import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

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
  }) : super(key: key);

  final Function()? onPressed;

  final String label;

  final TextOverflow labelOverflow;

  final bool isLoading;

  final bool enabled;

  final bool withBorder;

  final EdgeInsetsGeometry padding;

  final TextStyle? labelStyle;

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
                      ? InterfaceColors.action.specialColor!
                      : InterfaceColors.action.disabledColor!,
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
              color: InterfaceColors.action.disabledColor,
            )
          : Text(
              label,
              style: (labelStyle ?? t.AppTypography.title!.small)!.copyWith(
                color: enabled && !isLoading
                    ? InterfaceColors.action.defaultColor
                    : InterfaceColors.action.disabledColor,
              ),
              textAlign: TextAlign.center,
              overflow: labelOverflow,
            ),
    );
  }
}
