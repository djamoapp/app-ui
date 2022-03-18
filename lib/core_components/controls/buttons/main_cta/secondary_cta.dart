import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class SecondaryCTA extends StatelessWidget {
  const SecondaryCTA(
      {Key? key,
      this.onPressed,
      this.label = "Button",
      this.isLoading = false,
      this.enabled = true})
      : super(key: key);

  final Function()? onPressed;

  final String label;

  final bool isLoading;

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      onTap: enabled && !isLoading ? onPressed : null,
      borderRadius: BorderRadius.circular(24),
      child: isLoading
          ? const Center(child: AppLoader())
          : Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: Center(
                      child: Text(
                        label,
                        style: t.AppTypography.title!.small!.copyWith(
                          color: enabled && !isLoading
                              ? InterfaceColors.action.defaultColor
                              : InterfaceColors.action.disabledColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
