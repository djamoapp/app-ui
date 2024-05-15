import 'package:app_ui_m2/core_components/views/container/app_container.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_icons.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppToolTip extends StatelessWidget {
  const AppToolTip({
    Key? key,
    this.onClose,
    required this.title,
    required this.subTitle,
    this.destination,
    this.onTap,
    required this.leading,
    this.height = 100,
    this.padding,
  }) : super(key: key);

  final String title;

  final String subTitle;

  final Widget leading;

  final String? destination;

  final Function(String? link)? onTap;

  final Function()? onClose;

  final double height;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: padding ??
          EdgeInsets.symmetric(
            vertical: AppSpacings.s,
            horizontal: AppSpacings.m,
          ),
      height: height,
      child: GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!(destination);
          }
        },
        child: Row(
          children: [
            leading,
            AppGaps.m,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      textScaleFactor: 1.0,
                      style: AppTypography.label!.bSmall,
                    ),
                    Text(
                      subTitle,
                      textScaleFactor: 1.0,
                      style: AppTypography.body!.small!.copyWith(
                        color: NeutralColors.disabledTextColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (onClose != null) ...[
              AppGaps.m,
              IconButton(
                icon: Icon(
                  AppIcons.cross,
                  size: 10.67,
                  color: Colors.black,
                ),
                onPressed: onClose,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
