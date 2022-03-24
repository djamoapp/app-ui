import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class PrimaryCTA extends StatelessWidget {
  const PrimaryCTA(
      {Key? key,
      this.onPressed,
      this.label = "Confirmer",
      this.isLoading = false,
      this.enabled = true})
      : super(key: key);

  final Function()? onPressed;

  final String label;

  final bool isLoading;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: enabled && !isLoading
            ? InterfaceColors.action.defaultColor
            : InterfaceColors.action.disabledColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: enabled && !isLoading
            ? [
                BoxShadow(
                  color: InterfaceColors.action.defaultColor!
                      .withAlpha(81.6.round()),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ]
            : null,
      ),
      height: 40,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled && !isLoading ? onPressed : null,
          highlightColor: Colors.transparent,
          borderRadius: BorderRadius.circular(24),
          child: isLoading
              ? const Center(
                  child: AppLoader(
                    color: Colors.white,
                  ),
                )
              : Row(
                  children: [
                    Expanded(
                      child: Text(
                        label,
                        style: t.AppTypography.title!.small!
                            .copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
