import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/core_components/views/section_label/section_label.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    Key? key,
    this.boxDecoration,
    this.padding,
    this.height,
    this.width,
    this.margin,
    this.child,
    this.title,
    this.titleText,
    this.showTitleWidget = false,
    this.actionButtonText,
    this.onActionButtonTap,
    this.color,
    this.radiusAll,
    this.borderRadius,
    this.innerTitle = false,
    this.fullWidth = false,
    this.actionButtonPadding = const EdgeInsets.only(
      left: 16,
      right: 16,
      top: 7,
      bottom: 7,
    ),
  }) : super(key: key);

  final BoxDecoration? boxDecoration;

  final EdgeInsetsGeometry? padding;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final Widget? child;

  final Widget? title;

  final String? titleText;

  final String? actionButtonText;

  final EdgeInsets actionButtonPadding;

  final bool showTitleWidget;

  final Color? color;

  final double? radiusAll;

  final BorderRadiusGeometry? borderRadius;

  final Function()? onActionButtonTap;

  final bool innerTitle;

  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    return showTitleWidget && !innerTitle
        ? Container(
            margin: margin,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: _title(),
                ),
                AppGaps.s,
                _whiteBox(),
              ],
            ),
          )
        : _whiteBox();
  }

  Widget _whiteBox() {
    return Container(
      height: height,
      width: fullWidth ? double.infinity : width,
      padding: padding ?? const EdgeInsets.all(kDefaultPadding),
      margin: showTitleWidget && !innerTitle ? null : margin,
      decoration: boxDecoration ??
          BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: borderRadius ?? BorderRadius.circular(radiusAll ?? kDefaultBorderRadius),
          ),
      child: showTitleWidget && innerTitle
          ? Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title(),
                AppGaps.s,
                if (child != null) child!,
              ],
            )
          : child,
    );
  }

  Widget _title() {
    return title ??
        AppSectionLabel(
          label: titleText ?? "",
          labelStyle: AppTypography.label?.bMedium100?.copyWith(
            color: NeutralColors.neutral800,
          ),
          buttonLabel: actionButtonText ?? "",
          onButtonTap: onActionButtonTap,
          buttonPadding: actionButtonPadding,
          buttonLabelStyle: AppTypography.body!.bSmall,
        );
  }
}
