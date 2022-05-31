import 'dart:math';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';

import '../../cached_network_image/app_cached_network_image.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
    this.available = true,
    required this.image,
    this.isLocalImage = false,
  }) : super(key: key);

  final bool available;

  final String image;

  final bool isLocalImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 56,
      child: Stack(
        children: [
          Container(
            height: 56,
            width: 56,
            foregroundDecoration: available
                ? null
                : const BoxDecoration(
                    color: Color(0xff9F9F9F),
                    shape: BoxShape.circle,
                    backgroundBlendMode: BlendMode.saturation,
                  ),
            decoration: !isLocalImage
                ? null
                : BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
            child: isLocalImage
                ? null
                : ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: AppCachedNetworkImage(
                      imageUrl: image,
                    ),
                  ),
          ),
          if (!available) _unavailableOverlay,
        ],
      ),
    );
  }

  Widget get _unavailableOverlay => Container(
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(
            color: NeutralColors.disabledTextColor,
            width: 6,
          ),
        ),
        child: Center(
          child: Transform.rotate(
            angle: pi / 4,
            child: Container(
              width: 12,
              height: 52,
              decoration: BoxDecoration(
                color: NeutralColors.disabledTextColor.withOpacity(0.8),
              ),
            ),
          ),
        ),
      );
}
