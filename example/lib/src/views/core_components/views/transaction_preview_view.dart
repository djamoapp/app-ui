import 'package:app_ui/core_components/views/tags/tag.dart';
import 'package:app_ui/core_components/views/transaction_logos/avatar/avatar.dart';
import 'package:app_ui/design_tokens/colors/brand_colors.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/transaction_preview/transaction_preview.dart';

class TransactionPreviewView extends StatelessWidget {
  const TransactionPreviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction Preview"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          AppTransactionPreview(
            amount: "-5000 F CFA",
            leading: const AppAvatar(
              image:
                  "https://www.connectionivoirienne.net/wp-content/uploads/2020/11/118906899_187371862761972_693909889874278986_o-668x334.png",
              showBadge: true,
            ),
            title: 'A Malick Aziz',
            hasGif: true,
            gifMessage: "Joyeux Aniversaire Soeurette  zuosjusjs 🎉",
            tag: AppTag(
              textAndIconColor: BrandColors.pink.primary!,
              backGroundColor: BrandColors.pink.light!,
            ),
            date: "17/01/2020",
            amountColor: InterfaceColors.error.defaultColor!,
            time: '12:32',
            errorMessage: "Ehhh vraiment on est désolé !",
          ),
        ],
      ),
    );
  }
}
