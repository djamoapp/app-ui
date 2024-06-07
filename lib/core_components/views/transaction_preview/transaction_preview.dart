import 'package:app_ui_m2/core_components/views/container/app_container.dart';
import 'package:app_ui_m2/core_components/views/system_messages/inline/inline.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart' as t;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppTransactionPreview extends StatelessWidget {
  const AppTransactionPreview({
    Key? key,
    this.title,
    required this.date,
    required this.leading,
    required this.tag,
    this.hasGif = false,
    this.gifMessage,
    required this.amount,
    this.onTap,
    this.titleColor = NeutralColors.neutral900,
    required this.amountColor,
    this.onGifTap,
    this.errorMessage,
    required this.time,
    this.borderRadius,
  }) : super(key: key);

  final String? title;
  final String date;
  final String time;
  final Widget leading;
  final Widget tag;
  final bool hasGif;
  final String? gifMessage;
  final String amount;
  final void Function()? onTap;
  final String? errorMessage;
  final Color titleColor;
  final Color amountColor;
  final void Function()? onGifTap;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: t.AppTypography.label(context).small!.copyWith(
                  color: NeutralColors.disabledTextColor,
                ),
          ),
          AppGapsM2.m,
          Row(
            children: [
              leading,
              const Gap(10),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title != null) ...[
                      Text(
                        title!,
                        style: t.AppTypography.label(context).small!.copyWith(
                              color: titleColor,
                            ),
                      ),
                      AppGapsM2.xs,
                    ],
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        tag,
                        Row(
                          children: [
                            Text(
                              amount,
                              style: t.AppTypography.label(context)
                                  .small!
                                  .copyWith(
                                    color: amountColor,
                                  ),
                            ),
                            AppGapsM2.s,
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: InterfaceColors.action.backGroundColor,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.chevron_forward,
                                  size: 10,
                                  color: InterfaceColors.action.defaultColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    AppGapsM2.xs,
                    Text(
                      time,
                      style: t.AppTypography.body(context)
                          .small!
                          .copyWith(color: NeutralColors.disabledTextColor),
                    ),
                    if (errorMessage != null) ...[
                      AppGapsM2.xs,
                      AppInline.error(errorMessage!),
                    ],
                  ],
                ),
              ),
            ],
          ),
          if (hasGif) ...[
            AppGapsM2.xs,
            GestureDetector(
              onTap: onGifTap,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: InterfaceColors.action.backGroundColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        gifMessage!,
                        style: t.AppTypography.body(context).medium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    AppGapsM2.xs,
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: NeutralColors.disabledTextColor,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.gif_box,
                            size: 15,
                            color: NeutralColors.disabledTextColor,
                          ),
                          Gap(2.6),
                          Text(
                            "GIF",
                            style: t.AppTypography.body(context)
                                .bTiny!
                                .copyWith(
                                    color: NeutralColors.disabledTextColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          AppGapsM2.m,
          const Divider(
            thickness: 1,
            color: Color(0xffE0E0E0),
          )
        ],
      ),
    );
  }
}
