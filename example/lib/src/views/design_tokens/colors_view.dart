import 'package:app_ui_example/src/controllers/design_tokens/colors_controller.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorsView extends GetView<ColorsController> {
  const ColorsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Colors",
            style: TextStyle(
              color: NeutralColors.neutral900,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              "Brand Colors",
              style: TextStyle(
                  color: NeutralColors.neutral900,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            AppGapsM2.m,
            for (int i = 0; i < controller.brandColors.length; i++) ...[
              Text(controller.brandColors[i]["name"]),
              const Divider(),
              SizedBox(
                height: 150,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Primary"),
                        AppGapsM2.s,
                        _brandColorWidget(
                            controller.brandColors[i]["color"].primary!),
                      ],
                    ),
                    AppGapsM2.m,
                    if (controller.brandColors[i]["color"].light != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Light"),
                          AppGapsM2.s,
                          _brandColorWidget(
                              controller.brandColors[i]["color"].light!),
                        ],
                      ),
                    if (controller.brandColors[i]["color"].light == null) ...[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Light 200"),
                          AppGapsM2.s,
                          _brandColorWidget(
                              controller.brandColors[i]["color"].light200!),
                        ],
                      ),
                      AppGapsM2.m,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Light 100"),
                          AppGapsM2.s,
                          _brandColorWidget(
                              controller.brandColors[i]["color"].light100!),
                        ],
                      ),
                    ],
                    AppGapsM2.m,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Dark"),
                        AppGapsM2.s,
                        _brandColorWidget(
                            controller.brandColors[i]["color"].dark!),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            AppGapsM2.xl,
            const Text(
              "Neutral Colors",
              style: TextStyle(
                  color: NeutralColors.neutral900,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            AppGapsM2.m,
            SizedBox(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < 9; i++) ...[
                    Column(
                      children: [
                        Text("${900 - (i * 100)}"),
                        AppGapsM2.s,
                        _neutralColorWidget(
                            NeutralColors.neutral[900 - (i * 100)] as Color),
                      ],
                    ),
                    AppGapsM2.m,
                  ]
                ],
              ),
            ),
            AppGapsM2.xl,
            const Text(
              "Interface Colors",
              style: TextStyle(
                  color: NeutralColors.neutral900,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            AppGapsM2.m,
            Row(
              children: [
                const Text("Default"),
                AppGapsM2.m,
                Expanded(
                  child: SizedBox(
                    height: 150,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0;
                            i < controller.interfaceColors.length;
                            i++) ...[
                          Column(
                            children: [
                              Text(controller.interfaceColors[i]["name"]),
                              AppGapsM2.s,
                              _neutralColorWidget(controller
                                  .interfaceColors[i]["color"].defaultColor),
                            ],
                          ),
                          AppGapsM2.m,
                        ]
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text("Disabled"),
                AppGapsM2.m,
                Expanded(
                  child: SizedBox(
                    height: 150,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0;
                            i < controller.interfaceColors.length;
                            i++) ...[
                          Column(
                            children: [
                              Text(controller.interfaceColors[i]["name"]),
                              AppGapsM2.s,
                              _neutralColorWidget(controller
                                  .interfaceColors[i]["color"].disabledColor),
                            ],
                          ),
                          AppGapsM2.m,
                        ]
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text("Background"),
                AppGapsM2.m,
                Expanded(
                  child: SizedBox(
                    height: 150,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0;
                            i < controller.interfaceColors.length;
                            i++) ...[
                          Column(
                            children: [
                              Text(controller.interfaceColors[i]["name"]),
                              AppGapsM2.s,
                              _neutralColorWidget(controller
                                  .interfaceColors[i]["color"].backGroundColor),
                            ],
                          ),
                          AppGapsM2.m,
                        ]
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget _brandColorWidget(Color color) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(8),
        ),
      ),
    );
  }

  Widget _neutralColorWidget(Color color) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
