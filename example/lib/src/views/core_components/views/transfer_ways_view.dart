import 'package:app_ui/core_components/views/pop_ups/pop_up.dart';
import 'package:app_ui/core_components/views/transfer_way/transfer_way.dart';
import 'package:app_ui/core_components/views/transfer_way/transfer_ways_widget.dart';
import 'package:app_ui_example/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransferWaysView extends StatelessWidget {
  const TransferWaysView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transfer Ways"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: AppTransferWaysWidget<int>(
            containerWidget: Get.size.width - 40,
            ways: const [
              AppTransferWay(
                image: kMtnLogo,
                label: 'MTN MOMO',
              ),
              AppTransferWay(
                image: kOrangeLogo,
                label: 'Orange CI',
              ),
              AppTransferWay(
                image: kSgbciLogo,
                label: 'SGCI',
              ),
              AppTransferWay(
                image: kMtnLogo,
                label: 'MTN MOMO',
              ),
              AppTransferWay(
                image: kOrangeLogo,
                label: 'Orange CI',
              ),
              AppTransferWay(
                image: kSgbciLogo,
                label: 'SGCI',
              ),
              AppTransferWay(
                image: kMtnLogo,
                label: 'MTN MOMO',
              ),
              AppTransferWay(
                image: kOrangeLogo,
                label: 'Orange CI',
              ),
              AppTransferWay(
                image: kSgbciLogo,
                label: 'SGCI',
              ),
            ],
            onTap: (id, index) {
              showAppPopUp(context, body: "id = $id & index = $index");
            },
          ),
        ),
      ),
    );
  }
}
