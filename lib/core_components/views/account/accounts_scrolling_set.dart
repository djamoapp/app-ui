import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';

import 'account_widget.dart';

class AppAccountsScrollingSet<ID> extends StatelessWidget {
  const AppAccountsScrollingSet({
    Key? key,
    required this.accounts,
    this.onTap,
  }) : super(key: key);

  final List<AppAccountWidget<ID>> accounts;

  final void Function(int index, ID? id)? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 144,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(index, accounts[index].id);
              }
            },
            child: accounts[index],
          );
        },
        itemCount: accounts.length,
        separatorBuilder: (BuildContext context, int index) => AppSpacing.l,
      ),
    );
  }
}
