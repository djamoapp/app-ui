import 'package:app_ui/core_components/views/section_label/section_label.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:flutter/material.dart';

class AppWhiteBox extends StatelessWidget {
  const AppWhiteBox(
      {Key? key,
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
      this.innerTitle = false})
      : super(key: key);

  final BoxDecoration? boxDecoration;

  final EdgeInsetsGeometry? padding;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final Widget? child;

  final Widget? title;

  final String? titleText;

  final String? actionButtonText;

  final bool showTitleWidget;

  final Color? color;

  final double? radiusAll;

  final BorderRadiusGeometry? borderRadius;

  final Function()? onActionButtonTap;

  final bool innerTitle;

  @override
  Widget build(BuildContext context) {
    return showTitleWidget && !innerTitle
        ? Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: title ??
                    AppSectionLabel(
                      label: titleText ?? "",
                      buttonLabel: actionButtonText ?? "",
                      onButtonTap: onActionButtonTap,
                    ),
              ),
              AppSpacing.s,
              _whiteBox(),
            ],
          )
        : _whiteBox();
  }

  Widget _whiteBox() {
    return Container(
      height: height,
      width: width,
      padding: padding ?? const EdgeInsets.all(16),
      margin: margin,
      decoration: boxDecoration ??
          BoxDecoration(
            color: color ?? Colors.white,
            borderRadius:
                borderRadius ?? BorderRadius.circular(radiusAll ?? 16),
          ),
      child: showTitleWidget && innerTitle
          ? Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title ??
                    AppSectionLabel(
                      label: titleText ?? "",
                      buttonLabel: actionButtonText ?? "",
                      onButtonTap: onActionButtonTap,
                    ),
                AppSpacing.s,
                if (child != null) child!,
              ],
            )
          : child,
    );
  }
}
