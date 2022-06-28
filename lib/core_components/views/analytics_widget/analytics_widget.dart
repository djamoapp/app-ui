import 'dart:math';
import 'package:app_ui/core/models/chart_coodinate.dart';
import 'package:app_ui/core_components/views/analytics_widget/app_time_chart.dart';
import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppAnalyticsWidget extends StatefulWidget {
  const AppAnalyticsWidget(
    this.data, {
    Key? key,
    this.dataDomainKey = "day",
    this.dataMeasureFnKey = "sales",
    this.expensesTotalAmount = "60.000 F CFA",
    this.initialMonth,
    this.monthLabels,
    this.onCurrentMonthChanged,
    this.bottom,
  }) : super(key: key);

  final List<List<Map<String, dynamic>>> data;

  final List<String>? monthLabels;

  final String dataDomainKey;

  final String dataMeasureFnKey;

  final String expensesTotalAmount;

  final int? initialMonth;

  final Widget? bottom;

  final void Function(int currentMonth)? onCurrentMonthChanged;

  static withSampleData({bool animate = true}) {
    return AppAnalyticsWidget(
      List.generate(
          12,
          (index) => List.generate(
              30,
              (index) => {
                    "day": index == 0
                        ? 1
                        : (index + 1) % 10 == 0
                            ? index + 1
                            : null,
                    "sales": Random().nextInt(1000) + 1,
                  })),
      monthLabels: const [
        "Janvier",
        "Février",
        "Mars",
        "Avril",
        "Mai",
        "Juin",
        "Juillet",
        "Août",
        "Septembre",
        "Octobre",
        "Novembre",
        "Ce mois",
      ],
    );
  }

  @override
  State<AppAnalyticsWidget> createState() => _AppAnalyticsWidgetState();
}

class _AppAnalyticsWidgetState extends State<AppAnalyticsWidget> {
  bool _showGauges = false;

  late int _currentMonth;

  final String chartSeriesId = "transactions";

  @override
  initState() {
    super.initState();
    setState(() {
      _currentMonth = widget.initialMonth ?? widget.data.length - 1;
    });
  }

  void _onCurrentMonthChanged() {
    if (widget.onCurrentMonthChanged != null) {
      widget.onCurrentMonthChanged!(_currentMonth);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (_currentMonth > 0) {
                    setState(() {
                      _currentMonth--;
                    });
                    _onCurrentMonthChanged();
                  }
                },
                child: Container(
                  width: 40,
                  height: 32,
                  decoration: BoxDecoration(
                    color: InterfaceColors.action.backGroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.chevron_back,
                      size: 10,
                      color: _currentMonth == 0
                          ? NeutralColors.bordersHoverColor
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              AppGaps.s,
              Expanded(
                child: Container(
                  height: 32,
                  decoration: BoxDecoration(
                    color: InterfaceColors.action.backGroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      widget.monthLabels == null
                          ? "Mois ${_currentMonth + 1}"
                          : (widget.monthLabels!.length == widget.data.length
                              ? widget.monthLabels!.elementAt(_currentMonth)
                              : "Mois ${_currentMonth + 1}"),
                      style: t.AppTypography.title!.bSmall,
                    ),
                  ),
                ),
              ),
              AppGaps.s,
              GestureDetector(
                onTap: () {
                  if (_currentMonth < widget.data.length - 1) {
                    setState(() {
                      _currentMonth++;
                    });
                    _onCurrentMonthChanged();
                  }
                },
                child: Container(
                  width: 40,
                  height: 32,
                  decoration: BoxDecoration(
                    color: InterfaceColors.action.backGroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.chevron_forward,
                      size: 10,
                      color: _currentMonth == widget.data.length - 1
                          ? NeutralColors.bordersHoverColor
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              AppGaps.s,
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showGauges = !_showGauges;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  width: 40,
                  height: 32,
                  decoration: BoxDecoration(
                    color: _showGauges
                        ? InterfaceColors.action.disabledColor
                        : InterfaceColors.action.backGroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Icon(
                      AppIcons.addCircularGraph,
                      size: 20,
                      color: InterfaceColors.action.defaultColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          AppGaps.m,
          Text(
            "${widget.expensesTotalAmount}",
            style: t.AppTypography.headLine!.bLarge,
          ),
          Text(
            "Total de vos dépenses du mois",
            style: t.AppTypography.label!.small!.copyWith(
              color: NeutralColors.disabledTextColor,
            ),
          ),
          AppTimeChart(
            height: 70,
            data: List.generate(
              31,
              (index) => ChartCoordinates(
                DateTime(2022, 10, index + 1),
                Random().nextDouble() * 500,
              ),
            ),
          ),
          if (_showGauges && widget.bottom != null) ...[
            AppGaps.m,
            widget.bottom!,
          ]
        ],
      ),
    );
  }
}