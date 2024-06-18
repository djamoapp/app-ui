import 'package:app_ui_m2/core_components/controls/text_fields/text_field.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../design_tokens/colors/neutral_colors.dart';

class AppDateItemPicker<T> extends StatefulWidget {
  const AppDateItemPicker({
    Key? key,
    required this.controller,
    this.selectedItem,
    required this.selection,
    this.selectionItemBuilder,
    required this.onChanged,
    this.placeHolder,
    this.selectionItemReplacement,
  }) : super(key: key);

  final TextEditingController controller;

  final T? selectedItem;

  final List<T> selection;

  final Widget Function(T item, int index)? selectionItemBuilder;

  final Widget Function(T item, int index)? selectionItemReplacement;

  final void Function(T? value) onChanged;

  final String? placeHolder;

  @override
  State<AppDateItemPicker> createState() => _AppDateItemPickerState<T>();
}

class _AppDateItemPickerState<T> extends State<AppDateItemPicker<T>> {
  T? _selectedItem;

  final FocusNode _focusNode = FocusNode();

  late OverlayEntry _overlayEntry;

  final LayerLink _layerLink = LayerLink();

  @override
  void initState() {
    _focusNode.addListener(_focusListener);
    _selectedItem = widget.selectedItem;
    super.initState();
  }

  void _focusListener() {
    if (_focusNode.hasFocus) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry);
    } else {
      _overlayEntry.remove();
    }
  }

  void _onItemPickerTap() {
    if (_focusNode.hasFocus) {
      _focusNode.unfocus();
    }
  }

  void _onSelectionItemTap(int index) {
    setState(() {
      _focusNode.unfocus();
      _selectedItem = widget.selection[index];
    });
    widget.onChanged(_selectedItem);
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox? renderBox = context.findRenderObject() as RenderBox?;
    Size size = renderBox!.size;
    Offset offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height + 4,
        width: size.width,
        height: 100,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0.0, size.height + 4),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 16,
                  spreadRadius: 0,
                  color: Color.fromARGB(82, 101, 101, 101),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Material(
                color: Colors.white,
                elevation: 0,
                child: ListView.separated(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: widget.selection.length,
                  separatorBuilder: (context, index) => Container(
                    height: 1,
                    color: NeutralColors.neutral200,
                    margin: EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                  ),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () => _onSelectionItemTap(index),
                    child: widget.selectionItemBuilder != null
                        ? widget.selectionItemBuilder!(
                            widget.selection[index], index)
                        : Container(
                            padding: const EdgeInsets.only(
                              top: 4,
                              bottom: 8,
                              left: 16,
                              right: 16,
                            ),
                            color: _selectedItem == widget.selection[index]
                                ? NeutralColors.neutral200
                                : null,
                            child: widget.selectionItemReplacement != null
                                ? widget.selectionItemReplacement!(
                                    widget.selection[index],
                                    index,
                                  )
                                : Text(
                                    widget.selection[index].toString(),
                                    style: AppTypography.body(context).medium,
                                  ),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: AppTextField(
        onTap: _onItemPickerTap,
        controller: widget.controller,
        readOnly: true,
        showCursor: false,
        enabled: true,
        placeHolderText: widget.placeHolder ?? "",
        focusNode: _focusNode,
        suffixIcon: Icon(
          CupertinoIcons.chevron_down,
          size: 12,
          color: NeutralColors.neutral900,
        ),
      ),
    );
  }
}
