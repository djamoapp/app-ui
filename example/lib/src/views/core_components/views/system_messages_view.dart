import 'package:app_ui/core_components/views/system_messages/box/box.dart';
import 'package:app_ui/core_components/views/system_messages/inline/inline.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';

class SystemMessagesView extends StatelessWidget {
  const SystemMessagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("System Messages"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Box",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGaps.m,
          Text("Error"),
          Divider(),
          AppBox.error(
              "Ceci est un message d’erreur. Quelque chose n’a pas fonctionné correctement."),
          AppGaps.m,
          Text("Alert"),
          Divider(),
          AppBox.alert(
              "Ceci est un message d’alerte. Il faut y prêter beaucoup d’attention."),
          AppGaps.m,
          Text("Success"),
          Divider(),
          AppBox.success(
              "Ceci est un message de succès. Tout a marché comme il se devait."),
          AppGaps.m,
          Text("Info"),
          Divider(),
          AppBox.info(
              "Ceci est un message de succès. Tout a marché comme il se devait."),
          AppGaps.xl,
          const Text(
            "Inline",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGaps.m,
          Text("Error"),
          Divider(),
          AppInline.error(
              "Ceci est un message d’erreur. Quelque chose n’a pas fonctionné correctement."),
          AppGaps.m,
          Text("Alert"),
          Divider(),
          AppInline.alert(
              "Ceci est un message d’alerte. Il faut y prêter beaucoup d’attention."),
          AppGaps.m,
          Text("Success"),
          Divider(),
          AppInline.success(
              "Ceci est un message de succès. Tout a marché comme il se devait."),
          AppGaps.m,
          Text("Info"),
          Divider(),
          AppInline.info(
              "Ceci est un message de succès. Tout a marché comme il se devait."),
        ],
      ),
    );
  }
}
