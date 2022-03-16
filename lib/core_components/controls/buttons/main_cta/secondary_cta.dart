import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class SecondaryCTA extends StatelessWidget {
  const SecondaryCTA(
      {Key? key, this.onPressed, this.label = "Button", this.isLoading = false})
      : super(key: key);

  final Function()? onPressed;

  final String label;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      onTap: isLoading ? null : onPressed,
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
                            color: InterfaceColors.action.defaultColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
