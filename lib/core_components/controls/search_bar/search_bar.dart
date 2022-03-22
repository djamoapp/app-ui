import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({Key? key, required this.controller, this.onChanged})
      : super(key: key);

  final TextEditingController controller;

  final Function(String value)? onChanged;

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
              decoration: InputDecoration(
                hintText: "Nom, Numéro de téléphone",
                prefixIcon: const Icon(
                  Icons.search,
                  color: NeutralColors.bordersHoverColor,
                ),
                suffixIcon: _isEmpty
                    ? null
                    : IconButton(
                        icon: const Icon(
                          AppIcons.close,
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
