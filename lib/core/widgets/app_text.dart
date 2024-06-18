import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final double textScaleFactor;
  final TextStyle? textStyle;
  final TextAlign textAlign;

  const AppText({
    Key? key,
    required this.text,
    this.fontSize = 18.0,
    this.color = Colors.black,
    this.textStyle,
    this.textAlign = TextAlign.left,
    this.textScaleFactor = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Text(
      text,
      textScaleFactor: textScaleFactor != 1.0
          ? textScaleFactor
          : width < 330
              ? 0.8
              : textScaleFactor,
      textAlign: textAlign,
      style: textStyle ?? AppTypography.label(context).medium,
    );
  }
}
