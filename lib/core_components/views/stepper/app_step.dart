import 'package:flutter/cupertino.dart';

class AppStep {

  AppStep({required this.content, this.validator});

  final Widget content;

  final bool Function()? validator;

}