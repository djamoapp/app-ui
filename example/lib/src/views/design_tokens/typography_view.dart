import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:app_ui_example/src/controllers/design_tokens/typography_controller.dart';
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
          AppGaps.m,
          Text("Font Name"),
          Divider(),
          const Text(
            "Futura PT",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          AppGaps.m,
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
          AppGaps.xl,
          const Text(
            "Token Set",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGaps.m,
          Text("Typography Token Set"),
          Divider(),
          AppGaps.m,
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
                AppGaps.m,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/Large",
                      style: AppTypography.body!.large,
                    ),
                    Text(
                      "Light/16/20",
                      style: AppTypography.body!.large,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/Medium",
                      style: AppTypography.body!.medium,
                    ),
                    Text(
                      "Light/14/18",
                      style: AppTypography.body!.medium,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/B-Small",
                      style: AppTypography.body!.bSmall,
                    ),
                    Text(
                      "Medium/12.5/16",
                      style: AppTypography.body!.bSmall,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/Small",
                      style: AppTypography.body!.small,
                    ),
                    Text(
                      "Light/12.5/16",
                      style: AppTypography.body!.small,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/B-Tiny",
                      style: AppTypography.body!.bTiny,
                    ),
                    Text(
                      "Medium/10.5/16",
                      style: AppTypography.body!.bTiny,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Body/Tiny",
                      style: AppTypography.body!.tiny,
                    ),
                    Text(
                      "Light/10.5/16",
                      style: AppTypography.body!.tiny,
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppGaps.m,
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
                AppGaps.m,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/Large",
                      style: AppTypography.label!.large,
                    ),
                    Text(
                      "Book/18/22.5",
                      style: AppTypography.label!.large,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/B-Medium-200",
                      style: AppTypography.label!.bMedium200,
                    ),
                    Text(
                      "Medium/16/20",
                      style: AppTypography.label!.bMedium200,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/B-Medium-100",
                      style: AppTypography.label!.bMedium100,
                    ),
                    Text(
                      "Book/16/20",
                      style: AppTypography.label!.bMedium100,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/B-Small",
                      style: AppTypography.label!.bSmall,
                    ),
                    Text(
                      "Medium/14/18",
                      style: AppTypography.label!.bSmall,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Label/Small",
                      style: AppTypography.label!.small,
                    ),
                    Text(
                      "Book/14/18",
                      style: AppTypography.label!.small,
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppGaps.m,
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
                AppGaps.m,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/Large",
                      style: AppTypography.title!.large,
                    ),
                    Text(
                      "Medium/22.5/29",
                      style: AppTypography.title!.large,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/B-Medium-200",
                      style: AppTypography.title!.bMedium200,
                    ),
                    Text(
                      "Bold/20/26",
                      style: AppTypography.title!.bMedium200,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/B-Medium-100",
                      style: AppTypography.title!.bMedium100,
                    ),
                    Text(
                      "Bold/20/26",
                      style: AppTypography.title!.bMedium100,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/Medium",
                      style: AppTypography.title!.medium,
                    ),
                    Text(
                      "Medium/20/26",
                      style: AppTypography.title!.medium,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Title/Small",
                      style: AppTypography.title!.small,
                    ),
                    Text(
                      "Medium/18/22.5",
                      style: AppTypography.title!.small,
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppGaps.m,
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
                AppGaps.m,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Text(
                      "Headline/Large",
                      style: AppTypography.headLine!.large,
                    )),
                    Flexible(
                        child: Text(
                      "Bold/29/37",
                      style: AppTypography.headLine!.large,
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
                      style: AppTypography.headLine!.bLarge,
                    )),
                    Flexible(
                        child: Text(
                      "Bold/29/37",
                      style: AppTypography.headLine!.bLarge,
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
                      style: AppTypography.headLine!.medium,
                    )),
                    Flexible(
                        child: Text(
                      "Bold/26/34",
                      style: AppTypography.headLine!.medium,
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
