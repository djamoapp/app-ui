import 'package:flutter/material.dart';

class AppMargin extends StatelessWidget {
  final Widget child;
  final double top;
  final double bottom;
  final double left;
  final double right;

  const AppMargin(
      {Key? key,
      required this.child,
      this.top = 0,
      this.bottom = 0,
      this.left = 0,
      this.right = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: this.left,
        right: this.right,
        top: this.top,
        bottom: this.bottom,
      ),
      child: this.child,
    );
  }
}
