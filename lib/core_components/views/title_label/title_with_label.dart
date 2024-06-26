import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:flutter/cupertino.dart';

import '../../../design_tokens/typography/typography.dart';

class AppTitleWithLabel extends StatelessWidget {
  const AppTitleWithLabel(
      {Key? key, this.title, this.label, this.leading, this.trailing})
      : super(key: key);

  final String? title;

  final String? label;

  final Widget? leading;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading ??
            Text(
              title ?? "Title",
              style: AppTypography.label(context)
                  .bSmall!
                  .copyWith(fontSize: 14, color: NeutralColors.neutral900),
            ),
        trailing ??
            Flexible(
              child: Text(
                label ?? "Label",
                style: AppTypography.body(context).bTiny!.copyWith(
                    fontSize: 14, color: NeutralColors.disabledTextColor),
              ),
            ),
      ],
    );
  }
}
