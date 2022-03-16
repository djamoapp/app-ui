import 'package:app_ui/core_components/views/transfer_way/transfer_way.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:app_ui/core_components/views/white_box/app_white_box.dart';
import 'horizontal_listview_dot_indicator.dart';

class AppTransferWaysWidget<ID> extends StatelessWidget {
  const AppTransferWaysWidget(
      {Key? key,
      required this.ways,
      this.onTap,
      this.isLoading = false,
      required this.containerWidget})
      : super(key: key);

  final List<AppTransferWay<ID>> ways;

  final Function(ID? id, int index)? onTap;

  final bool isLoading;

  final double containerWidget;

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return AppWhiteBox(
      child: !isLoading
          ? Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 76,
                  child: ListView.separated(
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: ways.length,
                    separatorBuilder: (ctx, _) => AppSpacing.m,
                    itemBuilder: (ctx, index) => GestureDetector(
                      child: ways[index],
                      onTap: () {
                        if (onTap != null) {
                          onTap!(ways[index].id, index);
                        }
                      },
                    ),
                  ),
                ),
                AppSpacing.m,
                AppHorizontalListviewDotIndicators(
                  scrollController: scrollController,
                  containerWidth: containerWidget,
                  itemsCount: ways.length,
                  dotSize: 8,
                  itemsWidth: 56 + 16,
                ),
              ],
            )
          : SizedBox(
              height: 76,
              child: ListView.separated(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                separatorBuilder: (ctx, _) => AppSpacing.m,
                itemBuilder: (ctx, index) => Shimmer.fromColors(
                  baseColor: Colors.grey.withAlpha(20),
                  highlightColor: Colors.white.withAlpha(40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 56,
                        width: 56,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      AppSpacing.xs,
                      Container(
                        height: 16,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
