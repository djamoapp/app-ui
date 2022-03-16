import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/design_tokens/colors/gradients.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppVaultCreationCTA extends StatelessWidget {
  const AppVaultCreationCTA(
      {Key? key,
      required this.leading,
      this.onTap,
      required this.title,
      required this.subTitle})
      : super(key: key);

  final Widget leading;

  final void Function()? onTap;

  final String title;

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppContainer(
        boxDecoration: BoxDecoration(
          gradient: AppGradients.style1,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            leading,
            AppSpacing.m,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.label!.bMedium200!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  AppSpacing.xs,
                  Text(
                    subTitle,
                    style: AppTypography.body!.bSmall!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            AppSpacing.m,
            Icon(
              CupertinoIcons.chevron_right,
              color: Colors.white,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
