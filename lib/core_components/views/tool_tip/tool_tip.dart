import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/cupertino.dart';
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
  }) : super(key: key);

  final String title;

  final String subTitle;

  final Widget leading;

  final String? destination;

  final Function(String? link)? onTap;

  final Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 85,
      child: GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!(destination);
          }
        },
        child: Row(
          children: [
            leading,
            AppSpacing.m,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTypography.title!.bMedium100,
                    ),
                    AppSpacing.xs,
                    Text(
                      subTitle,
                      style: AppTypography.body!.bSmall!
                          .copyWith(color: NeutralColors.disabledTextColor),
                    )
                  ],
                ),
              ),
            ),
            AppSpacing.m,
            IconButton(
              icon: Icon(
                AppIcons.cross,
                size: 10.67,
                color: Colors.black,
              ),
              onPressed: onClose,
            ),
          ],
        ),
      ),
    );
  }
}
