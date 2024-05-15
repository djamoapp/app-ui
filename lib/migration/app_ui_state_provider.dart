import 'package:app_ui_m2/migration/app_type_enum.dart';
import 'package:flutter/material.dart';

class AppUIStateProvider extends InheritedModel<AppTypeEnum> {
  final AppTypeEnum type;
  final Widget Function(AppTypeEnum) builder;

  AppUIStateProvider({
    required this.type,
    required this.builder,
  }) : super(child: builder(type));

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
