import 'package:app_ui/core_components/views/tags/tag.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';

class AppBasicTag extends StatefulWidget {
  const AppBasicTag({
    Key? key,
    this.selectedColor,
    this.unselectedColor,
    this.selected = false,
    this.selectedTextColor,
    this.unselectedTextColor,
    this.label = "Label",
    this.onSelected,
  }) : super(key: key);

  final Color? selectedColor;

  final Color? unselectedColor;

  final Color? selectedTextColor;

  final Color? unselectedTextColor;

  final bool selected;

  final String label;

  final Function(String)? onSelected;

  @override
  _AppBasicTagState createState() => _AppBasicTagState();
}

class _AppBasicTagState extends State<AppBasicTag> {
  bool _selected = false;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
        if (widget.onSelected != null && _selected == true) {
          widget.onSelected!(widget.label);
        }
      },
      child: AppTag(
        text: widget.label,
        padding: const EdgeInsets.only(
          top: 6,
          bottom: 6,
          left: 12,
          right: 12,
        ),
        radius: 8,
        fontSize: 12.5,
        textAndIconColor: _selected
            ? (widget.selectedTextColor ?? Colors.white)
            : (widget.unselectedTextColor ??
                InterfaceColors.action.defaultColor!),
        backGroundColor: _selected
            ? (widget.selectedColor ?? InterfaceColors.action.defaultColor!)
            : (widget.unselectedColor ?? InterfaceColors.action.specialColor!),
      ),
    );
  }
}
