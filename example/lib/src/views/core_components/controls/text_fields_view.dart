import 'package:app_ui_example/src/utils/constants.dart';
import 'package:app_ui_m2/core_components/controls/text_fields/flat_text_field.dart';
import 'package:app_ui_m2/core_components/controls/text_fields/text_field.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_icons.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';

class TextFieldsView extends StatelessWidget {
  const TextFieldsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Fields"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Text Fiels",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGapsM2.m,
          const AppFlatTextField(
            placeHolderText: "PlaceHolderText",
            label: "Label Text",
          ),
          AppGapsM2.m,
          const Text("Normals"),
          const Divider(),
          AppGapsM2.m,
          const AppTextField(),
          AppGapsM2.m,
          const AppTextField(
            errorText: kDefaultErrorText,
          ),
          AppGapsM2.m,
          const AppTextField(
            enabled: false,
          ),
          AppGapsM2.xl,
          const Text("With Label"),
          const Divider(),
          AppGapsM2.m,
          const AppTextField(
            label: "Label",
          ),
          AppGapsM2.m,
          const AppTextField(
            label: "Label",
            errorText: kDefaultErrorText,
          ),
          AppGapsM2.m,
          const AppTextField(
            label: "Label",
            enabled: false,
          ),
          AppGapsM2.xl,
          const Text("Normals with Icon"),
          const Divider(),
          AppGapsM2.m,
          AppTextField(
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
          ),
          AppGapsM2.m,
          AppTextField(
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
            errorText: kDefaultErrorText,
          ),
          AppGapsM2.m,
          AppTextField(
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
            enabled: false,
          ),
          AppGapsM2.xl,
          const Text("With Label & Icon"),
          const Divider(),
          AppGapsM2.m,
          AppTextField(
            label: "Label",
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
          ),
          AppGapsM2.m,
          AppTextField(
            label: "Label",
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
            errorText: kDefaultErrorText,
          ),
          AppGapsM2.m,
          AppTextField(
            label: "Label",
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
            enabled: false,
          ),
        ],
      ),
    );
  }
}
