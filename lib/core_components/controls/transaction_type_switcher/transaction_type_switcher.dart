import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/controls/transaction_type_switcher/transaction_type_switcher_item.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';

class AppTransactionTypeSwitcher<T> extends StatefulWidget {
  const AppTransactionTypeSwitcher(
      {Key? key,
      required this.items,
      required this.onValueChanged,
      this.isStretch = false,
      this.initialValue,
      this.color})
      : super(key: key);

  final List<AppTransactionTypeSwitcherItem<T>> items;

  final void Function(T) onValueChanged;

  final bool isStretch;

  final T? initialValue;

  final Color? color;

  @override
  State<AppTransactionTypeSwitcher<T>> createState() =>
      _AppTransactionTypeSwitcherState<T>();
}

class _AppTransactionTypeSwitcherState<T>
    extends State<AppTransactionTypeSwitcher<T>> {
  late T _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue ?? widget.items[0].value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 6,
        bottom: 6,
        left: 8,
        right: 8,
      ),
      decoration: BoxDecoration(
        color: widget.color ?? Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: CustomSlidingSegmentedControl<T>(
        initialValue: widget.initialValue,
        isStretch: widget.isStretch,
        onValueChanged: (value) {
          setState(() {
            _currentValue = value;
          });
          widget.onValueChanged.call(value);
        },
        radius: 24,
        innerPadding: 0,
        //padding: 0,
        elevation: 0,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        children: {
          for (var item in widget.items)
            item.value: item.widget ??
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item.icon,
                        color: item.value == _currentValue
                            ? widget.items
                                    .singleWhere(
                                      (element) =>
                                          element.value == _currentValue,
                                    )
                                    .selectedColor ??
                                NeutralColors.neutral900
                            : NeutralColors.neutral900,
                        size: 10.67,
                      ),
                      const Gap(10),
                      Text(
                        item.text!,
                        style: AppTypography.label!.bSmall!.copyWith(
                            fontSize: 14,
                            color: item.value == _currentValue
                                ? widget.items
                                        .singleWhere(
                                          (element) =>
                                              element.value == _currentValue,
                                        )
                                        .selectedColor ??
                                    NeutralColors.neutral900
                                : NeutralColors.neutral900),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                )
        },
        thumbColor: widget.items
                .singleWhere(
                  (element) => element.value == _currentValue,
                )
                .selectedBackgroundColor ??
            Colors.white,
        // thumbDecoration: BoxDecoration(
        //   color: widget.items
        //           .singleWhere(
        //             (element) => element.value == _currentValue,
        //           )
        //           .selectedBackgroundColor ??
        //       Colors.white,
        // ),
      ),
    );
  }
}
