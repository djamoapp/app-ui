import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/core_components/views/tool_tip/tool_tip.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/iconography/colored_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            title: "Créez-vous un coffre",
            subTitle: "Épargner simplement et rapidement",
            leading: SvgPicture.asset(
              AppColoredIcons.car,
              package: kPackageName,
            ),
          ),
        ),
      ),
    );
  }
}
