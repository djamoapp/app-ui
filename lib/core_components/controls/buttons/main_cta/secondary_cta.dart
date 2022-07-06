import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class SecondaryCTA extends StatelessWidget {
  const SecondaryCTA({
    Key? key,
    this.onPressed,
    this.label = "Button",
    this.isLoading = false,
    this.enabled = true,
    this.labelOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final Function()? onPressed;

  final String label;

  final TextOverflow labelOverflow;

  final bool isLoading;

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      onTap: enabled && !isLoading ? onPressed : null,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: enabled
                ? InterfaceColors.action.specialColor!
                : InterfaceColors.action.defaultColor!,
          ),
        ),
        height: 40,
        child: isLoading
            ? const Center(
                child: AppLoader(
                  size: 20,
                ),
              )
            : Row(
                children: [
                  Expanded(
                    child: Text(
                      label,
                      style: t.AppTypography.title!.small!.copyWith(
                        color: enabled && !isLoading
                            ? InterfaceColors.action.defaultColor
                            : InterfaceColors.action.disabledColor,
                      ),
                      textAlign: TextAlign.center,
                      overflow: labelOverflow,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
