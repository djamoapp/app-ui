import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/core_components/views/pop_ups/pop_up.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:flutter/material.dart';

class PopUsView extends StatelessWidget {
  const PopUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pop-Up"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text("Pop-Up With Icon"),
          Divider(),
          AppSpacing.m,
          PrimaryCTA(
            text: "Show Pop-up with icon",
            onPressed: () {
              showAppPopUp(
                context,
                icon: AppIcons.alert,
              );
            },
          ),
          AppSpacing.xl,
          Text("Pop-Up With Title"),
          Divider(),
          AppSpacing.m,
          PrimaryCTA(
            text: "Show Pop-up with title",
            onPressed: () {
              showAppPopUp(
                context,
                title: "Djamo Label",
              );
            },
          ),
          AppSpacing.xl,
          Text("Pop-Up Without head"),
          Divider(),
          AppSpacing.m,
          PrimaryCTA(
            text: "Show simple Pop-up",
            onPressed: () {
              showAppPopUp(
                context,
              );
            },
          ),
        ],
      ),
    );
  }
}
