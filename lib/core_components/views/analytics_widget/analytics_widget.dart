import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:app_ui/core_components/views/tags/tag.dart';
import 'package:app_ui/design_tokens/colors/brand_colors.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppAnalyticsWidget extends StatefulWidget {
  const AppAnalyticsWidget(this.data,
      {Key? key,
      this.dataDomainKey = "day",
      this.dataMeasureFnKey = "sales",
      this.momoTotalAmount = 20000,
      this.paymentsTotalAmount = 14000,
      this.expensesTotalAmount = 60000,
      this.initialMonth,
      this.monthLabels,
      this.onCurrentMonthChanged,
      required this.formatter})
      : super(key: key);

  final List<List<Map<String, dynamic>>> data;

  final List<String>? monthLabels;

  final String dataDomainKey;

  final String dataMeasureFnKey;

  final double momoTotalAmount;

  final double paymentsTotalAmount;

  final double expensesTotalAmount;

  final int? initialMonth;

  final NumberFormat formatter;

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
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December"
      ],
      formatter: NumberFormat.currency(
          locale: "de_DE", decimalDigits: 0, symbol: "F CFA"),
    );
  }

  @override
  State<AppAnalyticsWidget> createState() => _AppAnalyticsWidgetState();
}

class _AppAnalyticsWidgetState extends State<AppAnalyticsWidget> {
  bool _showGauges = false;

  late int _currentMonth;

  final String _secondaryMeasureAxisId = 'secondaryMeasureAxisId';

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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
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
              AppSpacing.s,
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
              AppSpacing.s,
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
              AppSpacing.s,
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
          AppSpacing.m,
          Text(
            "${widget.formatter.format(widget.expensesTotalAmount)}F CFA",
            style: t.AppTypography.headLine!.bLarge,
          ),
          Text(
            "Total de vos dépenses du mois",
            style: t.AppTypography.label!.small!
                .copyWith(color: NeutralColors.disabledTextColor),
          ),
          SizedBox(
            height: 100,
            child: charts.BarChart(
              [
                charts.Series<Map<String, dynamic>, String>(
                  id: 'Djamo',
                  colorFn: (_, __) => charts.Color(
                      r: InterfaceColors.action.defaultColor!.red,
                      g: InterfaceColors.action.defaultColor!.green,
                      b: InterfaceColors.action.defaultColor!.blue),
                  domainFn: (data, _) => data[widget.dataDomainKey] == null
                      ? ' ' * _!
                      : data[widget.dataDomainKey].toString(),
                  measureFn: (data, _) => data[widget.dataMeasureFnKey],
                  data: widget.data[_currentMonth],
                )..setAttribute(
                    charts.measureAxisIdKey, _secondaryMeasureAxisId),
              ],
              animate: true,
              defaultRenderer: charts.BarRendererConfig(
                maxBarWidthPx: 2,
              ),
              domainAxis: const charts.AxisSpec<String>(
                showAxisLine: false,
              ),
              behaviors: [
                charts.LinePointHighlighter(
                  showHorizontalFollowLine:
                      charts.LinePointHighlighterFollowLineType.none,
                  showVerticalFollowLine:
                      charts.LinePointHighlighterFollowLineType.nearest,
                ),
                charts.SelectNearest(
                    eventTrigger: charts.SelectionTrigger.tapAndDrag),
                charts.InitialSelection(selectedDataConfig: [
                  charts.SeriesDatumConfig<String>(
                      chartSeriesId, "${DateTime.now().day}")
                ]),
                //charts.LinePointHighlighter(symbolRenderer: _CustomCircleSymbolRenderer(pointerValue: 12))
              ],
            ),
          ),
          if (_showGauges) ...[
            AppSpacing.m,
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: InterfaceColors.action.backGroundColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppTag(
                                icon: AppIcons.arrowTopRight,
                                text: "Mobile Money",
                                textAndIconColor:
                                    BrandColors.yellow.primary as Color,
                                backGroundColor:
                                    BrandColors.yellow.light100 as Color,
                              ),
                              AppSpacing.xs,
                              Text(
                                  "${widget.formatter.format(widget.momoTotalAmount)}F CFA")
                            ],
                          ),
                        ),
                        CircularPercentIndicator(
                          radius: 20,
                          lineWidth: 4,
                          percent: widget.momoTotalAmount /
                              widget.expensesTotalAmount,
                          backgroundColor: NeutralColors.neutral200,
                          animation: true,
                          reverse: true,
                          progressColor: BrandColors.yellow.primary,
                          center: Text(
                            "${((widget.momoTotalAmount / widget.expensesTotalAmount) * 100).round()}%",
                            style: t.AppTypography.body!.bSmall!
                                .copyWith(color: BrandColors.yellow.primary),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.s,
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: InterfaceColors.action.backGroundColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppTag(
                                text: "Paiement",
                                textAndIconColor:
                                    BrandColors.pink.primary as Color,
                                backGroundColor:
                                    BrandColors.pink.light as Color,
                              ),
                              AppSpacing.xs,
                              Text(
                                  "${widget.formatter.format(widget.paymentsTotalAmount)}F CFA")
                            ],
                          ),
                        ),
                        CircularPercentIndicator(
                          radius: 20,
                          lineWidth: 4,
                          percent: widget.paymentsTotalAmount /
                              widget.expensesTotalAmount,
                          backgroundColor: NeutralColors.neutral200,
                          animation: true,
                          reverse: true,
                          progressColor: BrandColors.pink.primary,
                          center: Text(
                            "${((widget.paymentsTotalAmount / widget.expensesTotalAmount) * 100).round()}%",
                            style: t.AppTypography.body!.bSmall!.copyWith(
                              color: BrandColors.pink.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}
