import 'package:app_ui_m2/core_components/views/container/app_container.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../design_tokens/colors/neutral_colors.dart';
import '../../../design_tokens/layout_and_spacing/app_gaps.dart';
import '../../../design_tokens/typography/typography.dart';
import '../../views/cached_network_image/app_cached_network_image.dart';

class AppVaultOverview extends StatelessWidget {
  const AppVaultOverview({
    Key? key,
    this.label = "Label",
    required this.balance,
    required this.image,
    this.isLocalImage = false,
  }) : super(key: key);

  final String label;

  final String balance;

  final String image;

  final bool isLocalImage;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: const EdgeInsets.only(
        top: AppSpacings.s,
        bottom: AppSpacings.s,
        left: AppSpacings.m,
        right: AppSpacings.m,
      ),
      child: Row(
        children: [
          if (isLocalImage)
            Image.asset(
              image,
              height: 30,
              width: 30,
            ),
          if (!isLocalImage)
            AppCachedNetworkImage(
              imageUrl: image,
              height: 30,
              width: 30,
            ),
          const Gap(18),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTypography.label(context).bSmall!.copyWith(
                        fontSize: 14,
                        color: NeutralColors.disabledBackGroundColor,
                      ),
                ),
                AppGapsM2.xs,
                Text(
                  balance,
                  style: AppTypography.label(context).bMedium200!.copyWith(
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
