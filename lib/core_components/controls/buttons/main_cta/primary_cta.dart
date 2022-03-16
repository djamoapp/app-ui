import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class PrimaryCTA extends StatelessWidget {
  const PrimaryCTA(
      {Key? key,
      this.onPressed,
      this.text = "Confirmer",
      this.isLoading = false})
      : super(key: key);

  final Function()? onPressed;

  final String text;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: InterfaceColors.action.defaultColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: InterfaceColors.action.defaultColor!.withAlpha(81.6.round()),
            offset: const Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      height: 40,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isLoading ? null : onPressed,
          highlightColor: Colors.transparent,
          borderRadius: BorderRadius.circular(24),
          child: isLoading
              ? const Center(
                  child: AppLoader(
                  color: Colors.white,
                ))
              : Row(
                  children: [
                    Expanded(
                        child: Text(
                      text,
                      style: t.AppTypography.title!.small!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
        ),
      ),
    );
  }
}
