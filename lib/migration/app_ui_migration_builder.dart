import 'package:app_ui/migration/app_type_enum.dart';
import 'package:app_ui/migration/app_ui_state_provider.dart';
import 'package:flutter/material.dart';

class AppUIMigrationBuilder extends StatelessWidget {
  const AppUIMigrationBuilder({
    Key? key,
    required this.M2,
    required this.M3,
  }) : super(key: key);
  final Widget M2;
  final Widget M3;

  @override
  Widget build(BuildContext context) {
    final appType = AppUIStateProvider.of(context).type;
    switch (appType) {
      case AppTypeEnum.M2:
        return M2;
      case AppTypeEnum.M3:
        return M3;
    }
  }
}
