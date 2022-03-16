import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final String type;
  final double fontSize;
  final Color color;
  final double textScaleFactor;

  // Style
  final TextStyle? customTextStyle;

  final TextAlign textAlign;

  //passing props in react style
  const AppText({
    Key? key,
    required this.text,
    this.type = "light",
    this.fontSize = 18.0,
    this.color = Colors.black,
    this.customTextStyle,
    this.textAlign = TextAlign.left,
    this.textScaleFactor = 1.0,
  }) : super(key: key);

  const AppText.text(this.text, {Key? key, this.color = Colors.black, this.fontSize = 18.0, this.type = 'medium', this.textAlign = TextAlign.left, this.textScaleFactor = 1.0, this.customTextStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    switch (type) {
      case 'light':
        return (Text(text,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: 'FuturaPT',
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,
              color: color,
            ),
            textScaleFactor: textScaleFactor != 1.0
                ? textScaleFactor
                : width < 330
                ? 0.8
                : textScaleFactor,
            textAlign: textAlign));
      case 'medium':
        return (Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'FuturaPTMediumBold',
            decoration: TextDecoration.none,
            color: color,
          ).copyWith(color: customTextStyle?.color),
          textScaleFactor: textScaleFactor != 1.0
              ? textScaleFactor
              : width < 330
              ? 0.8
              : textScaleFactor,
          textAlign: textAlign,
        ));
      case 'bold':
        return (Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'FuturaPTBold',
            decoration: TextDecoration.none,
            color: color,
          ),
          textScaleFactor: textScaleFactor != 1.0
              ? textScaleFactor
              : width < 330
              ? 0.8
              : textScaleFactor,
          textAlign: textAlign,
        ));
      case 'demibold':
        return (Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'FuturaPTDemiBold',
            decoration: TextDecoration.none,
            color: color,
          ),
          textScaleFactor: textScaleFactor != 1.0
              ? textScaleFactor
              : width < 330
              ? 0.8
              : textScaleFactor,
          textAlign: textAlign,
        ));
      default:
        TextStyle textStyle = const TextStyle(fontSize: 20.0);
        if (customTextStyle != null) {
          textStyle = customTextStyle as TextStyle;
        }
        return (Text(text,
            textScaleFactor: textScaleFactor != 1.0
                ? textScaleFactor
                : width < 330
                ? 0.8
                : textScaleFactor,
            textAlign: textAlign,
            style: textStyle));
    }
  }
}