import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:flutter/material.dart';

class AppExpandedButton extends StatelessWidget {
  const AppExpandedButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.radius = 16,
  }) : super(key: key);

  final Widget child;
  final Function()? onPressed;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(InterfaceColors.action.specialColor),
          foregroundColor:
              MaterialStateProperty.all(InterfaceColors.action.defaultColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
