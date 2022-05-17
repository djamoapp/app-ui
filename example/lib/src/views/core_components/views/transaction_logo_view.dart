import 'package:app_ui/core_components/views/transaction_logos/avatar/avatar.dart';
import 'package:app_ui/core_components/views/transaction_logos/logo/logo.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_example/src/utils/constants.dart';
import 'package:flutter/material.dart';

class TransactionLogoView extends StatelessWidget {
  const TransactionLogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction Logos"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Logos",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGaps.m,
          Text("Normal Logos"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppLogo(image: kGlovoLogo),
                AppGaps.m,
                AppLogo(image: kJumiaLogo),
                AppGaps.m,
                AppLogo(image: kKfcLogo),
                AppGaps.m,
                AppLogo(image: kBkLogo),
                AppGaps.m,
                AppLogo(image: kYangoLogo),
                AppGaps.m,
                AppLogo(image: kNetflixLogo),
              ],
            ),
          ),
          AppGaps.m,
          Text("Unavailable Logos"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppLogo(image: kOrangeLogo),
                AppGaps.m,
                AppLogo(
                  image: kOrangeLogo,
                  available: false,
                ),
                AppGaps.m,
                AppLogo(image: kMtnLogo),
                AppGaps.m,
                AppLogo(
                  image: kMtnLogo,
                  available: false,
                ),
                AppGaps.m,
                AppLogo(image: kSgbciLogo),
                AppGaps.m,
                AppLogo(
                  image: kSgbciLogo,
                  available: false,
                ),
                AppGaps.m,
                AppLogo(image: kSibLogo),
                AppGaps.m,
                AppLogo(
                  image: kSibLogo,
                  available: false,
                ),
              ],
            ),
          ),
          AppGaps.xl,
          const Text(
            "Avatars",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGaps.m,
          Text("Djamo Avatar"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppAvatar(
                  image: kProfile1,
                  showBadge: true,
                ),
                AppGaps.m,
                AppAvatar(
                  image: kProfile2,
                  showBadge: true,
                ),
                AppGaps.m,
                AppAvatar(
                  image: kProfile3,
                  showBadge: true,
                ),
                AppGaps.m,
                AppAvatar(
                  image: kProfile4,
                  showBadge: true,
                ),
              ],
            ),
          ),
          AppGaps.m,
          Text("Normal Avatars"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppAvatar(
                  image: kProfile1,
                ),
                AppGaps.m,
                AppAvatar(
                  image: kProfile2,
                ),
                AppGaps.m,
                AppAvatar(
                  image: kProfile3,
                ),
                AppGaps.m,
                AppAvatar(
                  image: kProfile4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
