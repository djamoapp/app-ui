import 'package:app_ui_m2/core_components/other_tokens/app_card.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';

class OtherTokensView extends StatelessWidget {
  const OtherTokensView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Tokens"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text(
            "Djamo Card",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGapsM2.m,
          Text("Active"),
          Divider(),
          AppGapsM2.m,
          AppCard(
            productName: "",
            cardNumbers: "**** **** **** 1003",
            expirationDate: "expirationDate",
            cvv: "***",
            accountIsActive: true,
            fullName: "SOULE AREMOU MALICK",
          ),
          AppGapsM2.xl,
          Text("Locked"),
          Divider(),
          AppGapsM2.m,
          AppCard(
            productName: "",
            cardNumbers: "**** **** **** 1003",
            expirationDate: "expirationDate",
            cvv: "***",
            accountIsActive: false,
            fullName: "SOULE AREMOU MALICK",
          ),
        ],
      ),
    );
  }
}
