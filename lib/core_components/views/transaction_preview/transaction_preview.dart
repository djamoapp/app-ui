import 'package:app_ui/core_components/views/tags/tag.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:app_ui/core_components/views/system_messages/inline/basic_inline.dart';
import 'package:app_ui/core_components/views/white_box/app_white_box.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppTransactionPreview extends StatelessWidget {
  const AppTransactionPreview(
      {Key? key,
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
      required this.formatter})
      : super(key: key);

  final String title;
  final DateTime date;
  final Widget leading;
  final AppTag tag;
  final bool hasGif;
  final String? gifMessage;
  final double amount;
  final Function()? onTap;
  final String? errorMessage;
  final Color titleColor;
  final Color amountColor;
  final Function()? onGifTap;
  final bool isFirst;
  final bool isLast;
  final NumberFormat formatter;

  @override
  Widget build(BuildContext context) {
    return AppWhiteBox(
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
            DateFormat("dd/MM/y").format(date),
            style: t.AppTypography.label!.small!
                .copyWith(color: NeutralColors.disabledTextColor),
          ),
          AppSpacing.m,
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
                    AppSpacing.xs,
                    tag,
                    AppSpacing.xs,
                    Text(
                      DateFormat("HH:mm").format(date),
                      style: t.AppTypography.body!.small!
                          .copyWith(color: NeutralColors.disabledTextColor),
                    ),
                    if (errorMessage != null) ...[
                      AppSpacing.xs,
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
              Text("${formatter.format(amount)}FCFA",
                  style: t.AppTypography.label!.small!
                      .copyWith(color: amountColor)),
              AppSpacing.xs,
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
            AppSpacing.s,
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
                          AppSpacing.xs,
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
          AppSpacing.m,
          const Divider(
            thickness: 1,
            color: Color(0xffE0E0E0),
          )
        ],
      ),
    );
  }
}
