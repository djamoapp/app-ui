import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:app_ui/core_components/controls/buttons/standard_buttons/standard_buttons.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void showAppPopUp(BuildContext context,
    {IconData? icon,
    String? title,
    String body =
        "Lorem ipsum dolor sit amet, consectetur. Gravida in purus mi, dignissim dignissim.",
    void Function(BuildContext ctx)? onYes,
    void Function(BuildContext ctx)? onNo}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 3.33,
                    right: 11.33,
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      AppIcons.close,
                      size: 13.33,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Gap(
              icon == null ? 11.33 : 15.63,
            ),
            if (icon != null) ...[
              Icon(
                icon,
                color: InterfaceColors.action.defaultColor,
                size: 32.37,
              ),
              if (title != null) AppGaps.m,
            ],
            if (title != null)
              Text(
                title,
                style: AppTypography.title!.bMedium200,
              ),
            const Gap(12),
            Text(
              body,
              textAlign: TextAlign.center,
              style: AppTypography.body!.bMedium100,
            ),
            AppGaps.l,
            Row(
              children: [
                Expanded(
                  child: StandardButtons.large(
                    style: StandardButtonStyle.outlined,
                    label: "Non",
                    onPressed: () {
                      Navigator.of(context).pop();
                      if (onNo != null) {
                        onNo(context);
                      }
                    },
                  ),
                ),
                const Gap(24),
                Expanded(
                  child: StandardButtons.large(
                    label: "Oui",
                    onPressed: () {
                      if (onYes != null) {
                        onYes(context);
                      } else {
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
