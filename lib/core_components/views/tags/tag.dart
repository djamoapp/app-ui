import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';

class AppTag extends StatelessWidget {
  const AppTag({
    Key? key,
    this.backGroundColor = NeutralColors.neutral800,
    this.text = "Djamo Tag",
    this.icon,
    this.textAndIconColor = NeutralColors.bordersHoverColor,
    this.padding,
    this.radius,
    this.textStyle,
  }) : super(key: key);

  final Color backGroundColor;

  final Color textAndIconColor;

  final IconData? icon;

  final String text;

  final EdgeInsetsGeometry? padding;

  final double? radius;

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.only(
            left: 4,
            right: 4,
            top: 2,
            bottom: 2,
          ),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(radius ?? 4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 8,
              color: textAndIconColor,
            ),
            AppGaps.xs,
          ],
          Text(
            text,
            style: this.textStyle != null
                ? this.textStyle?.copyWith(
                      color: textAndIconColor,
                    )
                : AppTypography.body!.bTiny!.copyWith(
                    color: textAndIconColor,
                  ),
          ),
        ],
      ),
    );
  }
}
