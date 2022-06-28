import 'package:flutter/cupertino.dart';

class AppTransactionTypeSwitcherItem<T> {
  final T value;

  final IconData? icon;

  final String? text;

  final Widget? widget;

  final Color? selectedBackgroundColor;

  final Color? selectedColor;

  final Color? unselectedColor;

  AppTransactionTypeSwitcherItem({
    required this.value,
    this.widget,
    this.icon,
    this.text,
    this.selectedBackgroundColor,
    this.selectedColor,
    this.unselectedColor,
  });
}
