import 'package:get/get.dart';
import 'package:app_ui/design_tokens/colors/brand_colors.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';

class ColorsController extends GetxController {
  final List<Map<String, dynamic>> brandColors = [
    {
      "name": "Black",
      "color": BrandColors.black,
    },
    {
      "name": "Blue",
      "color": BrandColors.blue,
    },
    {
      "name": "Green",
      "color": BrandColors.green,
    },
    {
      "name": "Yellow",
      "color": BrandColors.yellow,
    },
    {
      "name": "Pink",
      "color": BrandColors.pink,
    },
    {
      "name": "Red",
      "color": BrandColors.red,
    },
  ];

  final List<Map<String, dynamic>> interfaceColors = [
    {
      "name": "Action",
      "color": InterfaceColors.action,
    },
    {
      "name": "Success",
      "color": InterfaceColors.success,
    },
    {
      "name": "Alert",
      "color": InterfaceColors.alert,
    },
    {
      "name": "Error",
      "color": InterfaceColors.error,
    },
  ];
}
