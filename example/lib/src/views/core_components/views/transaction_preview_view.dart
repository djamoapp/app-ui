import 'package:app_ui/core_components/views/tags/tag.dart';
import 'package:app_ui/core_components/views/transaction_logos/avatar/avatar.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui_example/src/utils/constants.dart';
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
            amount: -5000,
            leading: const AppAvatar(
              image: kProfile3,
              isDjamoAvatar: true,
            ),
            hasGif: true,
            title: 'A Malick Aziz',
            gifMessage: "Joyeux Aniversaire Soeurette 🎉",
            tag: const AppTag(
              icon: AppIcons.djamo,
            ),
            date: DateTime.now(),
            amountColor: InterfaceColors.error.defaultColor!,
            formatter: kAmountFormatter,
          ),
        ],
      ),
    );
  }
}
