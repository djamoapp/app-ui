import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../design_tokens/colors/interface_colors.dart';
import '../../../design_tokens/iconography/app_icons.dart';
import '../loader/loader.dart';

class AppCachedNetworkImage extends StatelessWidget {
  const AppCachedNetworkImage({Key? key, required this.imageUrl, this.height, this.width, this.fit}) : super(key: key);

  final String imageUrl;

  final double? height;

  final double? width;

  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit ?? BoxFit.cover,
      height: height,
      width: width,
      errorWidget: (ctx, img, _) => Center(child: Icon(AppIcons.alert, color: InterfaceColors.error.defaultColor!, size: 20,),),
      placeholder: (ctx, img) => const AppLoader(),
    );
  }
}
