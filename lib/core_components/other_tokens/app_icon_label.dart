import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppIconLabel extends StatelessWidget {
  final Widget icon;
  final String label;
  final TextStyle? labelStyle;
  final Axis axis;
  final double spacing;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const AppIconLabel({
    Key? key,
    required this.icon,
    required this.label,
    this.labelStyle,
    this.axis = Axis.horizontal,
    this.spacing = 4,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (axis == Axis.vertical) {
      return Container(
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(
              height: spacing,
            ),
            Text(
              label,
              style: labelStyle ?? AppTypography.label(context).bSmall,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Row(
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(
              width: spacing + 5,
            ),
            Text(
              label,
              style: labelStyle ?? AppTypography.label(context).bSmall,
            ),
          ],
        ),
      );
    }
  }
}
