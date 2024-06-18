import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart' as t;
import 'package:flutter/material.dart';

class AppAccountWidget<ID> extends StatelessWidget {
  const AppAccountWidget({
    Key? key,
    this.selected = true,
    /*this.onTap, */
    required this.label,
    this.icon,
    required this.balance,
    this.id,
    this.imagePath,
  }) : super(key: key);

  final ID? id;

  final String label;

  final Widget? icon;

  final String? imagePath;

  final bool selected;

  final String balance;

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
                    balance,
                    style: t.AppTypography.label(context).bMedium200,
                  ),
                  Text(
                    label,
                    style: t.AppTypography.body(context)
                        .bSmall!
                        .copyWith(color: NeutralColors.disabledTextColor),
                  ),
                  AppGapsM2.s,
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
