import 'package:flutter/material.dart';
import 'package:app_ui/core_components/views/accordions/accordion_item.dart';
import 'package:app_ui/core_components/views/white_box/app_white_box.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppAccordion extends StatelessWidget {
  const AppAccordion({
    Key? key,
    this.items = const [],
    this.title = "Djamo",
    this.initiallyExpanded = true,
  }) : super(key: key);

  final String title;

  final List<AppAccordionItem> items;

  final bool initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    return AppWhiteBox(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: 16,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          initiallyExpanded: initiallyExpanded,
          title: Text(
            title,
            style: t.AppTypography.title!.bMedium100!
                .copyWith(color: Colors.black),
          ),
          iconColor: Colors.black,
          collapsedIconColor: Colors.black,
          tilePadding: const EdgeInsets.all(0),
          children: [
            for (int i = 0; i < items.length; i++) ...[
              items[i],
              if (items[i] != items.last) AppSpacing.s,
            ]
          ],
        ),
      ),
    );
  }
}
