import 'package:app_ui_m2/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui_m2/core_components/controls/buttons/main_cta/secondary_cta.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class DuoCTA extends StatelessWidget {
  const DuoCTA({
    Key? key,
    this.onPrimaryCTApressed,
    this.primaryCTAlabel = "Primary",
    this.isPrimaryCTAloading = false,
    this.isPrimaryCTAenabled = true,
    this.onSecondaryCTApressed,
    this.secondaryCTAlabel = "Secondary",
    this.isSecondaryCTAenabled = true,
    this.primaryCTAlabelStyle,
    this.secondaryCTAlabelStyle,
  }) : super(key: key);

  final Function()? onPrimaryCTApressed;

  final String primaryCTAlabel;

  final bool isPrimaryCTAloading;

  final bool isPrimaryCTAenabled;

  final Function()? onSecondaryCTApressed;

  final String secondaryCTAlabel;

  final bool isSecondaryCTAenabled;

  final TextStyle? primaryCTAlabelStyle;

  final TextStyle? secondaryCTAlabelStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PrimaryCTA(
          label: primaryCTAlabel,
          enabled: isPrimaryCTAenabled,
          isLoading: isPrimaryCTAloading,
          onPressed: onPrimaryCTApressed,
          labelStyle: primaryCTAlabelStyle,
        ),
        AppGapsM2.s,
        SecondaryCTA(
          withBorder: false,
          enabled: isSecondaryCTAenabled,
          isLoading: false,
          label: secondaryCTAlabel,
          onPressed: onSecondaryCTApressed,
          labelStyle:
              secondaryCTAlabelStyle ?? AppTypography.label(context).bSmall!,
        ),
      ],
    );
  }
}
