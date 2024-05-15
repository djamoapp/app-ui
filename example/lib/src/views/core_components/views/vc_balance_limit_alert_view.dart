import 'package:app_ui_m2/core_components/views/vc_balance_limit_alert/vc_balance_limit_alert.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
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
            AppGaps.m,
            AppVCBalanceLimitAlert(
              balance: '100.000',
              level: 0.25,
              cursorPosition: 200000 / 700000,
              maxAmount: '700.000',
            ),
            AppGaps.m,
          ],
        ));
  }
}
