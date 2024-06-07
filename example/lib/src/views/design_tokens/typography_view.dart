import 'package:app_ui_example/src/controllers/design_tokens/typography_controller.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypographyView extends GetView<TypographyController> {
  const TypographyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Typography"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Font Family Specifications",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGapsM2.m,
          Text("Font Name"),
          Divider(),
          const Text(
            "Futura PT",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          AppGapsM2.m,
          Text("Font Weights"),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Light"),
                  Text("Bold"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book"),
                  Text("ExtraBold"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DemiBold"),
                  Text("Heavy"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Medium"),
                ],
              ),
            ],
          ),
          AppGapsM2.xl,
          const Text(
            "Token Set",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGapsM2.m,
          Text("Typography Token Set"),
          Divider(),
          AppGapsM2.m,
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: NeutralColors.bordersHoverColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Body",
                      style: TextStyle(
                          color: NeutralColors.neutral900,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text("Weight/Size/Line Height"),
                  ],
                ),
                AppGapsM2.m,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/Large",
                      style: AppTypography.body(context).large,
                    ),
                    Text(
                      "Light/16/20",
                      style: AppTypography.body(context).large,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/Medium",
                      style: AppTypography.body(context).medium,
                    ),
                    Text(
                      "Light/14/18",
                      style: AppTypography.body(context).medium,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/B-Small",
                      style: AppTypography.body(context).bSmall,
                    ),
                    Text(
                      "Medium/12.5/16",
                      style: AppTypography.body(context).bSmall,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/Small",
                      style: AppTypography.body(context).small,
                    ),
                    Text(
                      "Light/12.5/16",
                      style: AppTypography.body(context).small,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/B-Tiny",
                      style: AppTypography.body(context).bTiny,
                    ),
                    Text(
                      "Medium/10.5/16",
                      style: AppTypography.body(context).bTiny,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/Tiny",
                      style: AppTypography.body(context).tiny,
                    ),
                    Text(
                      "Light/10.5/16",
                      style: AppTypography.body(context).tiny,
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppGapsM2.m,
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: NeutralColors.bordersHoverColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Label",
                      style: TextStyle(
                          color: NeutralColors.neutral900,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text("Weight/Size/Line Height"),
                  ],
                ),
                AppGapsM2.m,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/Large",
                      style: AppTypography.label(context).large,
                    ),
                    Text(
                      "Book/18/22.5",
                      style: AppTypography.label(context).large,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/B-Medium-200",
                      style: AppTypography.label(context).bMedium200,
                    ),
                    Text(
                      "Medium/16/20",
                      style: AppTypography.label(context).bMedium200,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/B-Medium-100",
                      style: AppTypography.label(context).bMedium100,
                    ),
                    Text(
                      "Book/16/20",
                      style: AppTypography.label(context).bMedium100,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/B-Small",
                      style: AppTypography.label(context).bSmall,
                    ),
                    Text(
                      "Medium/14/18",
                      style: AppTypography.label(context).bSmall,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/Small",
                      style: AppTypography.label(context).small,
                    ),
                    Text(
                      "Book/14/18",
                      style: AppTypography.label(context).small,
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppGapsM2.m,
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: NeutralColors.bordersHoverColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Title",
                      style: TextStyle(
                          color: NeutralColors.neutral900,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text("Weight/Size/Line Height"),
                  ],
                ),
                AppGapsM2.m,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/Large",
                      style: AppTypography.title(context).large,
                    ),
                    Text(
                      "Medium/22.5/29",
                      style: AppTypography.title(context).large,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/B-Medium-200",
                      style: AppTypography.title(context).bMedium200,
                    ),
                    Text(
                      "Bold/20/26",
                      style: AppTypography.title(context).bMedium200,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/B-Medium-100",
                      style: AppTypography.title(context).bMedium100,
                    ),
                    Text(
                      "Bold/20/26",
                      style: AppTypography.title(context).bMedium100,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/Medium",
                      style: AppTypography.title(context).medium,
                    ),
                    Text(
                      "Medium/20/26",
                      style: AppTypography.title(context).medium,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/Small",
                      style: AppTypography.title(context).small,
                    ),
                    Text(
                      "Medium/18/22.5",
                      style: AppTypography.title(context).small,
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppGapsM2.m,
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: NeutralColors.bordersHoverColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Headline",
                      style: TextStyle(
                          color: NeutralColors.neutral900,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text("Weight/Size/Line Height"),
                  ],
                ),
                AppGapsM2.m,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Text(
                      "Headline/Large",
                      style: AppTypography.headLine(context).large,
                    )),
                    Flexible(
                        child: Text(
                      "Bold/29/37",
                      style: AppTypography.headLine(context).large,
                    )),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Text(
                      "Headline/B-Large",
                      style: AppTypography.headLine(context).bLarge,
                    )),
                    Flexible(
                        child: Text(
                      "Bold/29/37",
                      style: AppTypography.headLine(context).bLarge,
                    )),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Text(
                      "Headline/Medium",
                      style: AppTypography.headLine(context).medium,
                    )),
                    Flexible(
                        child: Text(
                      "Bold/26/34",
                      style: AppTypography.headLine(context).medium,
                    )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
