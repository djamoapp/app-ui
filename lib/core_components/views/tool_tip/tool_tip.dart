import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/white_box/app_white_box.dart';
import 'package:app_ui/design_tokens/colors/gradients.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';

import '../cached_network_image/app_cached_network_image.dart';

class AppToolTip extends StatelessWidget {
  const AppToolTip(
      {Key? key,
      this.onClose,
      required this.title,
      required this.subTitle,
      this.destination,
      this.onTap,
      required this.image,
      this.isLocalImage = false,
      this.isVaultToolTip = false})
      : super(key: key);

  final String title;

  final String subTitle;

  final String image;

  final bool isLocalImage;

  final String? destination;

  final bool isVaultToolTip;

  final Function(String? link)? onTap;

  final Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return AppWhiteBox(
      height: 85,
      boxDecoration: isVaultToolTip
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: Gradients.style1,
            )
          : null,
      child: GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!(destination);
          }
        },
        child: Row(
          children: [
            if (isLocalImage)
              Image.asset(
                image,
                height: 32,
                width: 32,
              ),
            if (!isLocalImage)
              AppCachedNetworkImage(
                imageUrl: image,
                height: 32,
                width: 32,
              ),
            AppSpacing.m,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: (isVaultToolTip
                              ? AppTypography.title!.bMedium200!
                              : AppTypography.title!.bMedium100!)
                          .copyWith(
                              color: isVaultToolTip ? Colors.white : null),
                    ),
                    AppSpacing.xs,
                    Text(
                      subTitle,
                      style: AppTypography.body!.bSmall!.copyWith(
                          color: isVaultToolTip
                              ? Colors.white
                              : NeutralColors.disabledTextColor),
                    )
                  ],
                ),
              ),
            ),
            AppSpacing.m,
            IconButton(
              icon: Icon(
                isVaultToolTip ? CupertinoIcons.chevron_right : AppIcons.cross,
                size: 10.67,
                color: isVaultToolTip ? Colors.white : Colors.black,
              ),
              onPressed: isVaultToolTip ? null : onClose,
            ),
          ],
        ),
      ),
    );
  }
}
