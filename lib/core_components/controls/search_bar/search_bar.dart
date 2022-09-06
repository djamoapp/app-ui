import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;
import 'package:flutter/services.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({
    Key? key,
    required this.controller,
    this.onChanged,
    this.inputFormatters,
    this.placeHolderText = "",
    this.autoFocus = false,
    this.enabled = true,
  }) : super(key: key);

  final TextEditingController controller;

  final Function(String value)? onChanged;

  final List<TextInputFormatter>? inputFormatters;

  final String placeHolderText;

  final bool autoFocus;

  final bool enabled;

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  bool _isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              autofocus: widget.autoFocus,
              onChanged: (value) {
                setState(() {
                  _isEmpty = value.isEmpty;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(value);
                }
              },
              controller: widget.controller,
              style: t.AppTypography.label!.large,
              cursorColor: InterfaceColors.action.defaultColor,
              cursorHeight: 16,
              cursorWidth: 1,
              inputFormatters: widget.inputFormatters,
              decoration: InputDecoration(
                enabled: widget.enabled,
                hintText: widget.placeHolderText,
                prefixIcon: const Icon(
                  Icons.search,
                  color: NeutralColors.bordersHoverColor,
                ),
                suffixIcon: _isEmpty
                    ? null
                    : IconButton(
                        icon: const Icon(
                          AppIcons.cross,
                          color: NeutralColors.bordersHoverColor,
                          size: 14,
                        ),
                        onPressed: () {
                          setState(() {
                            widget.controller.clear();
                            _isEmpty = true;
                          });
                        },
                      ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
