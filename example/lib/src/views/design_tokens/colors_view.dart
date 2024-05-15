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
            AppGaps.m,
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
                        AppGaps.s,
                        _brandColorWidget(
                            controller.brandColors[i]["color"].primary!),
                      ],
                    ),
                    AppGaps.m,
                    if (controller.brandColors[i]["color"].light != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Light"),
                          AppGaps.s,
                          _brandColorWidget(
                              controller.brandColors[i]["color"].light!),
                        ],
                      ),
                    if (controller.brandColors[i]["color"].light == null) ...[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Light 200"),
                          AppGaps.s,
                          _brandColorWidget(
                              controller.brandColors[i]["color"].light200!),
                        ],
                      ),
                      AppGaps.m,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Light 100"),
                          AppGaps.s,
                          _brandColorWidget(
                              controller.brandColors[i]["color"].light100!),
                        ],
                      ),
                    ],
                    AppGaps.m,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Dark"),
                        AppGaps.s,
                        _brandColorWidget(
                            controller.brandColors[i]["color"].dark!),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            AppGaps.xl,
            const Text(
              "Neutral Colors",
              style: TextStyle(
                  color: NeutralColors.neutral900,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            AppGaps.m,
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
                        AppGaps.s,
                        _neutralColorWidget(
                            NeutralColors.neutral[900 - (i * 100)] as Color),
                      ],
                    ),
                    AppGaps.m,
                  ]
                ],
              ),
            ),
            AppGaps.xl,
            const Text(
              "Interface Colors",
              style: TextStyle(
                  color: NeutralColors.neutral900,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            AppGaps.m,
            Row(
              children: [
                const Text("Default"),
                AppGaps.m,
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
                              AppGaps.s,
                              _neutralColorWidget(controller
                                  .interfaceColors[i]["color"].defaultColor),
                            ],
                          ),
                          AppGaps.m,
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
                AppGaps.m,
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
                              AppGaps.s,
                              _neutralColorWidget(controller
                                  .interfaceColors[i]["color"].disabledColor),
                            ],
                          ),
                          AppGaps.m,
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
                AppGaps.m,
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
                              AppGaps.s,
                              _neutralColorWidget(controller
                                  .interfaceColors[i]["color"].backGroundColor),
                            ],
                          ),
                          AppGaps.m,
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
