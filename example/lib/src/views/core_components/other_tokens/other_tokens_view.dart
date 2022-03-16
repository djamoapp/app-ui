import 'package:app_ui/core_components/other_tokens/app_card.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
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
          AppSpacing.m,
          Text("Active"),
          Divider(),
          AppSpacing.m,
          AppCard(
            productName: "",
            cardNumbers: "**** **** **** 1003",
            expirationDate: "expirationDate",
            cvv: "***",
            accountIsActive: true,
            fullName: "SOULE AREMOU MALICK",
          ),
          AppSpacing.xl,
          Text("Locked"),
          Divider(),
          AppSpacing.m,
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
