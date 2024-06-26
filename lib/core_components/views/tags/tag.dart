import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppTag extends StatelessWidget {
  const AppTag({
    Key? key,
    this.backGroundColor = NeutralColors.neutral800,
    this.text = "Djamo Tag",
    this.icon,
    this.iconSize = 8,
    this.suffixIconSize = 8,
    this.suffixIcon,
    this.textAndIconColor = NeutralColors.bordersHoverColor,
    this.padding,
    this.radius,
    this.textStyle,
    this.border,
  }) : super(key: key);

  final Color backGroundColor;

  final Color textAndIconColor;

  final double iconSize;

  final IconData? icon;

  final double suffixIconSize;

  final IconData? suffixIcon;

  final String text;

  final EdgeInsetsGeometry? padding;

  final double? radius;

  final TextStyle? textStyle;

  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.only(
            left: AppSpacings.xs,
            right: AppSpacings.xs,
            top: 2,
            bottom: 2,
          ),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(radius ?? 4),
        border: border,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: iconSize,
              color: textAndIconColor,
            ),
            AppGapsM2.xs,
          ],
          Text(
            text,
            style: this.textStyle != null
                ? this.textStyle?.copyWith(
                      color: textAndIconColor,
                    )
                : AppTypography.body(context).bTiny!.copyWith(
                      color: textAndIconColor,
                    ),
            textAlign: TextAlign.center,
          ),
          if (suffixIcon != null) ...[
            AppGapsM2.xs,
            Icon(
              suffixIcon,
              size: suffixIconSize,
              color: textAndIconColor,
            ),
          ],
        ],
      ),
    );
  }
}
