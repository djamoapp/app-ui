import 'package:app_ui/core_components/controls/text_fields/text_field.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui_example/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/core_components/controls/text_fields/flat_text_field.dart';

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
          AppSpacing.m,
          const AppFlatTextField(
            placeHolderText: "PlaceHolderText",
            label: "Label Text",
          ),
          AppSpacing.m,
          const Text("Normals"),
          const Divider(),
          AppSpacing.m,
          const AppTextField(),
          AppSpacing.m,
          const AppTextField(
            errorText: kDefaultErrorText,
          ),
          AppSpacing.m,
          const AppTextField(
            enabled: false,
          ),
          AppSpacing.xl,
          const Text("With Label"),
          const Divider(),
          AppSpacing.m,
          const AppTextField(
            label: "Label",
          ),
          AppSpacing.m,
          const AppTextField(
            label: "Label",
            errorText: kDefaultErrorText,
          ),
          AppSpacing.m,
          const AppTextField(
            label: "Label",
            enabled: false,
          ),
          AppSpacing.xl,
          const Text("Normals with Icon"),
          const Divider(),
          AppSpacing.m,
          AppTextField(
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
          ),
          AppSpacing.m,
          AppTextField(
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
            errorText: kDefaultErrorText,
          ),
          AppSpacing.m,
          AppTextField(
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
            enabled: false,
          ),
          AppSpacing.xl,
          const Text("With Label & Icon"),
          const Divider(),
          AppSpacing.m,
          AppTextField(
            label: "Label",
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
          ),
          AppSpacing.m,
          AppTextField(
            label: "Label",
            suffixIcon: Icon(
              AppIcons.profile,
              color: NeutralColors.neutral[600],
            ),
            errorText: kDefaultErrorText,
          ),
          AppSpacing.m,
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
