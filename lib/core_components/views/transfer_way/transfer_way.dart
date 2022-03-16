import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;
import '../cached_network_image/app_cached_network_image.dart';

class AppTransferWay<ID> extends StatelessWidget {
  const AppTransferWay(
      {Key? key,
      required this.image,
      this.isLocalImage = false,
      /*this.onTap,*/ this.id,
      required this.label})
      : super(key: key);

  final ID? id;

  final String image;

  final String label;

  final bool isLocalImage;

  //final Function(ID? id)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            height: 56,
            width: 56,
            decoration: const BoxDecoration(
              color: Color(0xffD7E5FF),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Container(
                child: isLocalImage
                    ? null
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: AppCachedNetworkImage(
                          imageUrl: image,
                        ),
                      ),
                decoration: !isLocalImage
                    ? null
                    : BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        )),
              ),
            )),
        AppSpacing.xs,
        Text(
          label,
          style: t.AppTypography.body!.bSmall,
        ),
      ],
    );
  }
}
