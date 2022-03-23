import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppAmountTextField extends StatelessWidget {
  const AppAmountTextField(
      {Key? key, this.controller, this.validator, this.formatters})
      : super(key: key);

  final TextEditingController? controller;

  final String? Function(String?)? validator;

  final List<TextInputFormatter>? formatters;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: controller,
            validator: validator,
            inputFormatters: formatters,
            decoration: InputDecoration(border: InputBorder.none),
            textAlign: TextAlign.end,
            cursorColor: InterfaceColors.action.defaultColor,
            style: AppTypography.bigger.large!
                .copyWith(color: InterfaceColors.action.defaultColor),
          ),
        ),
        Expanded(
          child: Text(
            kDeviseSymbol,
            style: AppTypography.headLine!.medium!
                .copyWith(color: NeutralColors.bordersHoverColor),
          ),
        )
      ],
    );
  }
}
