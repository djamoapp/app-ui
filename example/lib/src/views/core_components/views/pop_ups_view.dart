import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/core_components/views/pop_ups/pop_up.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
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
          AppGaps.m,
          PrimaryCTA(
            label: "Show Pop-up with icon",
            onPressed: () {
              showAppPopUp(
                context,
                icon: AppIcons.alert,
              );
            },
          ),
          AppGaps.xl,
          Text("Pop-Up With Title"),
          Divider(),
          AppGaps.m,
          PrimaryCTA(
            label: "Show Pop-up with title",
            onPressed: () {
              showAppPopUp(
                context,
                title: "Djamo Label",
              );
            },
          ),
          AppGaps.xl,
          Text("Pop-Up Without head"),
          Divider(),
          AppGaps.m,
          PrimaryCTA(
            label: "Show simple Pop-up",
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
