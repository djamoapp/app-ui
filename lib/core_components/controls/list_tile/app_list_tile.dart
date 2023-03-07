import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    Key? key,
    this.leading,
    this.onTap,
    this.title = "Titre",
    this.subTitle = "Sous-titre",
    this.backgroundColor,
    this.borderRadius,
    this.decoration,
    this.border,
    this.borderColor,
    this.bordered = false,
    this.trailing,
    this.afterLeadingGap,
    this.beforeTrailingGap,
    this.titleStyle,
    this.titleScaleFactor = 1.0,
    this.subTitleStyle,
    this.subTitleScaleFactor = 1.0,
    this.titleColor,
    this.subTitleColor,
    this.afterTitleGap,
    this.titleWidget,
    this.subTitleWidget,
    this.columnMainAxisAlignment,
    this.padding,
    this.margin,
  }) : super(key: key);

  final Color? backgroundColor;

  final BorderRadiusGeometry? borderRadius;

  final BoxDecoration? decoration;

  final BoxBorder? border;

  final Color? borderColor;

  final bool bordered;

  final Widget? leading;

  final Widget? trailing;

  final Widget? afterLeadingGap;

  final Widget? beforeTrailingGap;

  final Widget? afterTitleGap;

  final void Function()? onTap;

  final String title;

  final Color? titleColor;

  final TextStyle? titleStyle;

  final double titleScaleFactor;

  final String subTitle;

  final Color? subTitleColor;

  final TextStyle? subTitleStyle;

  final double subTitleScaleFactor;

  final Widget? titleWidget;

  final Widget? subTitleWidget;

  final MainAxisAlignment? columnMainAxisAlignment;

  final EdgeInsetsGeometry? padding;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppContainer(
        padding: padding,
        margin: margin,
        boxDecoration: decoration ??
            BoxDecoration(
              color: backgroundColor ??
                  (bordered ? Colors.transparent : Colors.white),
              borderRadius: borderRadius ?? BorderRadius.circular(16),
              border: border ??
                  (bordered
                      ? Border.all(
                          color: borderColor ??
                              InterfaceColors.action.specialColor!,
                          style: BorderStyle.solid,
                          width: 2,
                        )
                      : null),
            ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (leading != null) ...[
              leading!,
              afterLeadingGap ?? AppGaps.m,
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    columnMainAxisAlignment ?? MainAxisAlignment.center,
                children: [
                  titleWidget ??
                      Text(
                        title,
                        style: titleStyle ??
                            AppTypography.label!.bSmall!.copyWith(
                              color: titleColor ?? NeutralColors.neutral900,
                            ),
                        textScaleFactor: titleScaleFactor,
                      ),
                  afterTitleGap ?? AppGaps.xs,
                  subTitleWidget ??
                      Text(
                        subTitle,
                        style: subTitleStyle ??
                            AppTypography.body!.small!.copyWith(
                              color: subTitleColor ?? NeutralColors.neutral700,
                            ),
                        textScaleFactor: subTitleScaleFactor,
                      ),
                ],
              ),
            ),
            if (trailing != null) ...[
              beforeTrailingGap ?? AppGaps.m,
              trailing!,
            ],
          ],
        ),
      ),
    );
  }
}
