import 'package:app_ui_m2/migration/app_type_enum.dart';
import 'package:app_ui_m2/migration/app_ui_state_provider.dart';
import 'package:flutter/material.dart';

T useAppUIMigrate<T>(
  BuildContext context, {
  required T M2,
  required T M3,
}) {
  final appType = AppUIStateProvider.of(context).type;
  switch (appType) {
    case AppTypeEnum.M2:
      return M2;
    case AppTypeEnum.M3:
      return M3;
  }
}
