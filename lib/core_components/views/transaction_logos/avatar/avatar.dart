import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';

import '../../cached_network_image/app_cached_network_image.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    Key? key,
    this.isDjamoAvatar = false,
    required this.image,
    this.isLocalImage = false,
  }) : super(key: key);

  final bool isDjamoAvatar;

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
            decoration: !isLocalImage
                ? null
                : BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    )),
            child: isLocalImage
                ? null
                : ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: AppCachedNetworkImage(
                      imageUrl: image,
                    ),
                  ),
          ),
          if (isDjamoAvatar)
            Align(
              alignment: Alignment.bottomRight,
              child: _djamoBadge,
            ),
        ],
      ),
    );
  }

  Widget get _djamoBadge => Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black,
            border: Border.all(
              color: Colors.white,
              width: 2,
            )),
        child: const Center(
          child: Icon(
            AppIcons.djamo,
            size: 12,
            color: Colors.white,
          ),
        ),
      );
}
