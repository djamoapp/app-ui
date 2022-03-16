import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';

class AppHorizontalListviewDotIndicators extends StatefulWidget {
  final ScrollController scrollController;
  final double containerWidth;
  final int itemsCount;
  final double itemsWidth;
  final double dotSize;
  const AppHorizontalListviewDotIndicators(
      {Key? key,
      required this.scrollController,
      required this.containerWidth,
      required this.itemsCount,
      required this.dotSize,
      required this.itemsWidth})
      : super(key: key);

  @override
  _AppHorizontalListviewDotIndicatorsState createState() =>
      _AppHorizontalListviewDotIndicatorsState();
}

class _AppHorizontalListviewDotIndicatorsState
    extends State<AppHorizontalListviewDotIndicators> {
  late int _pageCount;

  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _pageCount = widget.itemsCount <= widget.containerWidth / widget.itemsWidth
        ? 1
        : ((widget.containerWidth / widget.itemsWidth) / widget.itemsCount)
                .ceil() +
            1;
    widget.scrollController.addListener(_scrollListener);
    _currentPage = 0;
  }

  _scrollListener() {
    ScrollPosition scrollPosition = widget.scrollController.position;
    double positionRatio =
        scrollPosition.pixels / scrollPosition.maxScrollExtent;

    if (mounted) {
      setState(() {
        _currentPage = positionRatio.toInt();
      });
    }
  }

  _selectPage(index) {
    double position = 0;
    if ((index + 1) == _pageCount) {
      position = widget.scrollController.position.maxScrollExtent;
    } else {
      position = (widget.itemsCount * widget.dotSize) / (100 / (index + 1));
    }
    widget.scrollController.animateTo(position,
        duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _pageCount,
        (index) => InkWell(
          onTap: () => _selectPage(index),
          child: index == _currentPage
              ? Container(
                  margin: const EdgeInsets.only(
                    left: 4,
                    right: 4,
                  ),
                  height: widget.dotSize,
                  width: widget.dotSize,
                  decoration: BoxDecoration(
                    color: InterfaceColors.action.defaultColor,
                    shape: BoxShape.circle,
                  ),
                )
              : Container(
                  height: widget.dotSize,
                  width: widget.dotSize,
                  margin: const EdgeInsets.only(
                    left: 4,
                    right: 4,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: NeutralColors.bordersHoverColor,
                        width: 2,
                      )),
                ),
        ),
      ),
    );
  }
}
