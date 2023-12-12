import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppSnackBar {
  AppSnackBar._();

  static SnackBar info(
    String label, {
    Key? key,
    Duration duration = const Duration(seconds: 5),
    DismissDirection dismissDirection = DismissDirection.down,
    EdgeInsets margin = const EdgeInsets.only(
      bottom: AppSpacings.m,
      left: AppSpacings.m,
      right: AppSpacings.m,
    ),
    bool withIcon = true,
    Widget? trailing,
  }) {
    return basic(
      key: key,
      backgroundColor: NeutralColors.neutral200,
      dismissDirection: dismissDirection,
      label: label,
      margin: margin,
      duration: duration,
      leading: withIcon
          ? Icon(
              AppIcons.info,
              color: InterfaceColors.action.defaultColor,
              size: 20,
            )
          : null,
      trailing: trailing,
    );
  }

  static SnackBar alert(
    String label, {
    Key? key,
    Duration duration = const Duration(seconds: 5),
    DismissDirection dismissDirection = DismissDirection.down,
    bool withIcon = true,
    Widget? trailing,
    EdgeInsets margin = const EdgeInsets.only(
      bottom: AppSpacings.m,
      left: AppSpacings.m,
      right: AppSpacings.m,
    ),
  }) {
    return basic(
      key: key,
      backgroundColor: InterfaceColors.alert.backGroundColor!,
      dismissDirection: dismissDirection,
      label: label,
      margin: margin,
      duration: duration,
      leading: withIcon
          ? Icon(
              AppIcons.alert,
              color: InterfaceColors.alert.defaultColor,
              size: 20,
            )
          : null,
      trailing: trailing,
    );
  }

  static SnackBar success(
    String label, {
    Key? key,
    Duration duration = const Duration(seconds: 5),
    DismissDirection dismissDirection = DismissDirection.down,
    bool withIcon = true,
    EdgeInsets margin = const EdgeInsets.only(
      bottom: AppSpacings.m,
      left: AppSpacings.m,
      right: AppSpacings.m,
    ),
    Widget? trailing,
  }) {
    return basic(
      key: key,
      dismissDirection: dismissDirection,
      margin: margin,
      backgroundColor: InterfaceColors.success.backGroundColor!,
      label: label,
      duration: duration,
      leading: withIcon
          ? Icon(
              AppIcons.check,
              color: InterfaceColors.success.defaultColor,
              size: 20,
            )
          : null,
      trailing: trailing,
    );
  }

  static SnackBar error(
    String label, {
    Key? key,
    Duration duration = const Duration(seconds: 5),
    bool withIcon = true,
    DismissDirection dismissDirection = DismissDirection.down,
    EdgeInsets margin = const EdgeInsets.only(
      bottom: AppSpacings.m,
      left: AppSpacings.m,
      right: AppSpacings.m,
    ),
    Widget? trailing,
  }) {
    return basic(
      key: key,
      backgroundColor: InterfaceColors.error.backGroundColor!,
      dismissDirection: dismissDirection,
      label: label,
      margin: margin,
      duration: duration,
      leading: withIcon
          ? Icon(
              CupertinoIcons.exclamationmark_circle,
              color: InterfaceColors.error.defaultColor,
              size: 20,
            )
          : null,
      trailing: trailing,
    );
  }

  static SnackBar basic({
    Key? key,
    Widget? leading,
    Widget? trailing,
    required String label,
    required Color backgroundColor,
    DismissDirection dismissDirection = DismissDirection.down,
    EdgeInsets margin = const EdgeInsets.only(
      bottom: AppSpacings.m,
      left: AppSpacings.m,
      right: AppSpacings.m,
    ),
    Duration duration = const Duration(
      seconds: 5,
    ),
  }) {
    return SnackBar(
      key: key,
      margin: margin,
      dismissDirection: dismissDirection,
      padding: EdgeInsets.all(AppSpacings.m),
      elevation: 5,
      duration: duration,
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (leading != null) ...[
            leading,
            Gap(10),
          ],
          Expanded(
            child: Text(
              label,
              style: AppTypography.body!.small!,
            ),
          ),
          if (trailing != null) ...[
            Gap(10),
            trailing,
          ],
        ],
      ),
    );
  }
}

extension SnackBarExtention on SnackBar {
  void hide(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  void show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(this);
  }
}
