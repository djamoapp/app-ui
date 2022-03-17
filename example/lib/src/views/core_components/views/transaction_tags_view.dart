import 'package:app_ui/core_components/views/tags/tag.dart';
import 'package:app_ui/design_tokens/colors/brand_colors.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';

class TransactionTagsView extends StatelessWidget {
  const TransactionTagsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction Tags"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Transaction Tags",
              style: TextStyle(
                  color: NeutralColors.neutral900,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            AppGaps.m,
            AppTag(),
            AppGaps.m,
            AppTag(
              icon: AppIcons.arrowTopRight,
            ),
            AppGaps.m,
            AppTag(
              text: "Bonus",
            ),
            AppGaps.m,
            AppTag(
              text: "Premium",
            ),
            AppGaps.m,
            AppTag(
              text: "Rechargement",
              textAndIconColor: InterfaceColors.success.defaultColor!,
              backGroundColor: InterfaceColors.success.backGroundColor!,
            ),
            AppGaps.m,
            AppTag(
              text: "Remboursement",
              textAndIconColor: InterfaceColors.success.defaultColor!,
              backGroundColor: InterfaceColors.success.backGroundColor!,
            ),
            AppGaps.m,
            AppTag(
              icon: AppIcons.arrowTopRight,
              text: "Mobile Money",
              textAndIconColor: InterfaceColors.alert.defaultColor!,
              backGroundColor: InterfaceColors.alert.backGroundColor!,
            ),
            AppGaps.m,
            AppTag(
              text: "Paiement",
              textAndIconColor: BrandColors.pink.primary!,
              backGroundColor: BrandColors.pink.light!,
            ),
            AppGaps.m,
            AppTag(
              text: "Retrait",
              textAndIconColor: BrandColors.blue.dark!,
              backGroundColor: BrandColors.blue.light!,
            ),
            AppGaps.m,
            AppTag(
              text: "Echec",
              textAndIconColor: BrandColors.red.primary!,
              backGroundColor: BrandColors.red.light!,
            ),
            AppGaps.m,
            AppTag(
              text: "Frais de rejet",
              textAndIconColor: BrandColors.red.primary!,
              backGroundColor: BrandColors.red.light!,
            ),
          ],
        ),
      ),
    );
  }
}
