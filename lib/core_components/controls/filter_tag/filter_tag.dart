import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppFilterTag<T> extends StatefulWidget {
  const AppFilterTag(
      {Key? key,
      this.enabled = true,
      required this.label,
      this.onChanged,
      required this.items,
      this.preselectedValue})
      : super(key: key);

  final bool enabled;

  final String label;

  final void Function(T?)? onChanged;

  final List<DropdownMenuItem<T>> items;

  final T? preselectedValue;

  @override
  State<AppFilterTag<T>> createState() => _AppFilterTagState<T>();
}

class _AppFilterTagState<T> extends State<AppFilterTag<T>> {
  T? _selectedFilter;

  @override
  initState() {
    super.initState();
    setState(() {
      _selectedFilter = widget.preselectedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
        left: 12,
        right: 12,
      ),
      duration: const Duration(seconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: !widget.enabled
            ? InterfaceColors.action.disabledColor
            : Colors.white,
        border: widget.enabled
            ? Border.all(
                color: InterfaceColors.action.disabledColor!,
                width: 2,
              )
            : null,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          isDense: true,
          value: _selectedFilter,
          //borderRadius: BorderRadius.circular(16),
          hint: Text(
            widget.label,
            style: AppTypography.body!.bSmall!.copyWith(
              color: InterfaceColors.action.defaultColor,
              fontSize: 14,
            ),
          ),
          style: AppTypography.body!.bSmall!.copyWith(
            color: InterfaceColors.action.defaultColor,
            fontSize: 14,
          ),
          elevation: 2,
          iconDisabledColor: InterfaceColors.action.defaultColor,
          iconEnabledColor: InterfaceColors.action.defaultColor,
          items: widget.items,
          onChanged: widget.enabled
              ? (T? v) {
                  if (v != null) {
                    setState(() {
                      _selectedFilter = v;
                    });
                    if (widget.onChanged != null) widget.onChanged!.call(v);
                  }
                }
              : null,
        ),
      ),
    );
  }
}
