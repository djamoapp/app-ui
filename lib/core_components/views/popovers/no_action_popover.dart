import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';

import '../cached_network_image/app_cached_network_image.dart';

void showAppNoActionPopover(
  BuildContext context, {
  String image = "assets/gif/lock.gif",
  bool localImage = true,
  String body =
      "Lorem ipsum dolor sit amet, consectetur. Gravida in purus mi, dignissim dignissim.",
  String package = kPackageName,
}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (ctx) => WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        backgroundColor: const Color(0xffFBFBFB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: const EdgeInsets.only(
            top: kDefaultPadding,
            left: AppSpacings.l,
            right: AppSpacings.l,
            bottom: AppSpacings.xl,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (localImage)
                Image.asset(
                  image,
                  height: 120,
                  width: 120,
                  package: package,
                ),
              if (!localImage)
                AppCachedNetworkImage(
                  imageUrl: image,
                  height: 120,
                  width: 120,
                ),
              AppGaps.s,
              Text(
                body,
                style: AppTypography.body!.large!.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    ),
  );
}
