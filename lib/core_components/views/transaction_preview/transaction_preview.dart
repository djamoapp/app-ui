import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/core_components/views/tags/tag.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/views/system_messages/inline/basic_inline.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppTransactionPreview extends StatelessWidget {
  const AppTransactionPreview({
    Key? key,
    required this.title,
    required this.date,
    required this.leading,
    required this.tag,
    required this.hasGif,
    this.gifMessage,
    required this.amount,
    this.onTap,
    this.titleColor = NeutralColors.neutral900,
    required this.amountColor,
    this.onGifTap,
    this.errorMessage,
    this.isFirst = false,
    this.isLast = false,
    required this.time,
  }) : super(key: key);

  final String title;
  final String date;
  final String time;
  final Widget leading;
  final AppTag tag;
  final bool hasGif;
  final String? gifMessage;
  final String amount;
  final void Function()? onTap;
  final String? errorMessage;
  final Color titleColor;
  final Color amountColor;
  final void Function()? onGifTap;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(isFirst ? 16 : 0),
        topLeft: Radius.circular(isFirst ? 16 : 0),
        bottomLeft: Radius.circular(isLast ? 16 : 0),
        bottomRight: Radius.circular(isLast ? 16 : 0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: t.AppTypography.label!.small!
                .copyWith(color: NeutralColors.disabledTextColor),
          ),
          AppGaps.m,
          Row(
            children: [
              leading,
              const Gap(11.5),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: t.AppTypography.label!.small!
                          .copyWith(color: titleColor),
                    ),
                    AppGaps.xs,
                    tag,
                    AppGaps.xs,
                    Text(
                      time,
                      style: t.AppTypography.body!.small!
                          .copyWith(color: NeutralColors.disabledTextColor),
                    ),
                    if (errorMessage != null) ...[
                      AppGaps.xs,
                      DjamoBasicInline(
                        iconData: AppIcons.alert,
                        textColor: InterfaceColors.error.defaultColor!,
                        iconColor: InterfaceColors.error.defaultColor!,
                        text: errorMessage!,
                        iconSize: 12.95,
                      ),
                    ]
                  ],
                ),
              ),
              Text(amount,
                  style: t.AppTypography.label!.small!
                      .copyWith(color: amountColor)),
              AppGaps.xs,
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
          if (hasGif) ...[
            AppGaps.s,
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
                    Text(
                      gifMessage!,
                      style: t.AppTypography.body!.medium,
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: NeutralColors.disabledTextColor,
                          )),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.gif,
                            size: 10.67,
                            color: NeutralColors.disabledTextColor,
                          ),
                          AppGaps.xs,
                          Text(
                            "GIF",
                            style: t.AppTypography.body!.bTiny!.copyWith(
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
          AppGaps.m,
          const Divider(
            thickness: 1,
            color: Color(0xffE0E0E0),
          )
        ],
      ),
    );
  }
}
