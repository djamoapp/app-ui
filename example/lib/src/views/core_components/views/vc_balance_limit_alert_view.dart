import 'package:app_ui/core_components/views/vc_balance_limit_alert/vc_balance_limit_alert.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui_example/src/utils/constants.dart';
import 'package:flutter/material.dart';

class VCBalanceLimitAlertView extends StatelessWidget {
  const VCBalanceLimitAlertView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("VC Balance Limit Alert"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text("VC Balance Limit Alert"),
            Divider(),
            AppSpacing.m,
            AppVCBalanceLimitAlert(
              formatter: kAmountFormatter,
            ),
            AppSpacing.m,
            AppVCBalanceLimitAlert(
              value: 150000,
              formatter: kAmountFormatter,
            ),
            AppSpacing.m,
            AppVCBalanceLimitAlert(
              value: 200000,
              formatter: kAmountFormatter,
            ),
          ],
        ));
  }
}
