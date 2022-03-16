import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppAccountWidget<ID> extends StatelessWidget {
  const AppAccountWidget(
      {Key? key,
      this.selected = true,
      /*this.onTap, */ required this.label,
      this.icon,
      required this.balance,
      this.id,
      this.imagePath,
      required this.formatter})
      : super(key: key);

  final ID? id;

  final String label;

  final Widget? icon;

  final String? imagePath;

  final bool selected;

  final double balance;

  final NumberFormat formatter;

  //final Function(bool value)? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 144,
      width: 104,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: selected ? 88 : 144,
              width: 104,
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Expanded(child: Container()),
                  Text(
                    "${formatter.format(balance)}F",
                    style: t.AppTypography.label!.bMedium200,
                  ),
                  Text(
                    label,
                    style: t.AppTypography.body!.bSmall!
                        .copyWith(color: NeutralColors.disabledTextColor),
                  ),
                  AppSpacing.s,
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 4,
                    width: 40,
                    decoration: BoxDecoration(
                      color: selected
                          ? InterfaceColors.action.defaultColor
                          : NeutralColors.neutral200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            child: icon ??
                Image.asset(
                  imagePath!,
                  height: 90,
                ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
