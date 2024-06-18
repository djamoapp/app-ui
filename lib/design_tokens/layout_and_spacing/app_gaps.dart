import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:gap/gap.dart';

class AppGapsM2 {
  AppGapsM2._();

  static Gap custom(double value) => Gap(value);

  static const Gap none = Gap(AppSpacings.none);

  static const Gap xs = Gap(AppSpacings.xs);

  static const Gap s = Gap(AppSpacings.s);

  static const Gap m = Gap(AppSpacings.m);

  static const Gap l = Gap(AppSpacings.l);

  static const Gap xl = Gap(AppSpacings.xl);

  static const Gap xxl = Gap(AppSpacings.xxl);

  static const Gap xxxL = Gap(AppSpacings.xxxL);

  static const Gap ul = Gap(AppSpacings.ul);
}
