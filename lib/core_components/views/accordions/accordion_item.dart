import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppAccordionItem<T> extends StatelessWidget {
  const AppAccordionItem(
      {Key? key, this.value, this.groupValue, this.onTap, this.label = "Djamo"})
      : super(key: key);

  final T? value;

  final T? groupValue;

  final String label;

  final Function(T? value)? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!(value);
        }
      },
      child: AppContainer(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 8,
          bottom: 8,
        ),
        color: value == groupValue
            ? const Color(0xffD7E5FF)
            : NeutralColors.neutral200,
        child: Row(
          children: [
            value == groupValue ? _checkedWidget : _unCheckedWidget,
            AppGaps.m,
            Expanded(
              child: Text(
                label,
                style: t.AppTypography.title!.medium!
                    .copyWith(color: Colors.black),
              ),
            ),
            AppGaps.m,
            if (value != groupValue)
              Icon(
                CupertinoIcons.chevron_forward,
                color: InterfaceColors.action.defaultColor,
                size: 10,
              ),
          ],
        ),
      ),
    );
  }

  Widget get _unCheckedWidget => Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffCCCCCC),
            width: 2,
          ),
          shape: BoxShape.circle,
          color: const Color(0xffE0E0E0),
        ),
      );

  Widget get _checkedWidget => Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: InterfaceColors.action.defaultColor,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Icon(
            AppIcons.check,
            color: Colors.white,
            size: 6,
          ),
        ),
      );
}
