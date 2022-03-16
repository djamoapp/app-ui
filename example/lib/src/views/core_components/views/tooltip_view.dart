import 'package:app_ui/core_components/views/tool_tip/tool_tip.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/iconography/colored_icons.dart';

class ToolTipView extends StatelessWidget {
  const ToolTipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tooltip"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: AppToolTip(
            title: 'Rechargements',
            subTitle:
                'Les rechargements MTN Mobile Money passent de 2% à 100 F CFA',
            image: AppColoredIcons.vault,
            isLocalImage: true,
          ),
        ),
      ),
    );
  }
}
