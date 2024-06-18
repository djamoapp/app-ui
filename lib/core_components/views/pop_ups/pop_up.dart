import 'package:app_ui_m2/core/constants/constants.dart';
import 'package:app_ui_m2/core/enums/standard_button_style.dart';
import 'package:app_ui_m2/core_components/controls/buttons/standard_buttons/standard_buttons.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_icons.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void showAppPopUp(
  BuildContext context, {
  IconData? icon,
  String? title,
  String body =
      "Lorem ipsum dolor sit amet, consectetur. Gravida in purus mi, dignissim dignissim.",
  void Function(BuildContext ctx)? onYes,
  void Function(BuildContext ctx)? onNo,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
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
                      AppIcons.cross,
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
              if (title != null) AppGapsM2.m,
            ],
            if (title != null)
              Text(
                title,
                style: AppTypography.title(context).bMedium200,
              ),
            const Gap(12),
            Text(
              body,
              textAlign: TextAlign.center,
              style: AppTypography.body(context).bMedium100,
            ),
            AppGapsM2.l,
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
                AppGapsM2.m,
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
