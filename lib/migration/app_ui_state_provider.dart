import 'package:app_ui/migration/app_type_enum.dart';
import 'package:flutter/material.dart';

class AppUIStateProvider extends InheritedModel<AppTypeEnum> {
  final AppTypeEnum type;

  AppUIStateProvider({required this.type, required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(AppUIStateProvider oldWidget) {
    return oldWidget.type != type;
  }

  @override
  bool updateShouldNotifyDependent(
      AppUIStateProvider oldWidget, Set<AppTypeEnum> dependencies) {
    return dependencies.contains(type);
  }

  static AppUIStateProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppUIStateProvider>()!;
  }

  //maybeOf
  static AppUIStateProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppUIStateProvider>();
  }
}
