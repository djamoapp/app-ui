import 'dart:math';

import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import '../../../core/models/chart_coodinate.dart';
import '../../../design_tokens/colors/interface_colors.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_flutter/src/text_style.dart' as style;
import 'package:charts_flutter/src/text_element.dart';

class AppTimeChart extends StatelessWidget {
  const AppTimeChart({
    Key? key,
    required this.data,
    this.height = 100,
    this.barColor,
    this.animate = true,
    this.primaryAxisFormatter,
    this.showPrimaryAxisLine = false,
    this.domainAxisFormatter,
    this.showDomainAxisLine = false,
    this.barWidth = 2,
    this.increments = const [5],
    this.showPrimaryAxis = false,
  }) : super(key: key);

  final double height;

  final int barWidth;

  final Color? barColor;

  final List<ChartCoordinates<DateTime, double>> data;

  final bool animate;

  final String Function(num? value)? primaryAxisFormatter;

  final bool showPrimaryAxisLine;

  final bool showPrimaryAxis;

  final String Function(DateTime? value)? domainAxisFormatter;

  final bool showDomainAxisLine;

  final List<int> increments;

  final String _secondaryMeasureAxisId = 'secondaryMeasureAxisId';

  final String _chartId = "app_chart";

  @override
  Widget build(BuildContext context) {
    final charts.Series<ChartCoordinates<DateTime, double>, DateTime> chart =
        charts.Series<ChartCoordinates<DateTime, double>, DateTime>(
      id: _chartId,
      colorFn: (coordinate, __) => charts.Color(
        r: (coordinate.color ??
                barColor ??
                InterfaceColors.action.defaultColor!)
            .red,
        g: (coordinate.color ??
                barColor ??
                InterfaceColors.action.defaultColor!)
            .green,
        b: (coordinate.color ??
                barColor ??
                InterfaceColors.action.defaultColor!)
            .blue,
      ),
      domainFn: (coordinate, _) => coordinate.x,
      measureFn: (coordinate, _) => coordinate.y,
      data: data,
    );
    if (showPrimaryAxis) {
      chart.setAttribute(
        charts.measureAxisIdKey,
        _secondaryMeasureAxisId,
      );
    }
    return SizedBox(
      height: height,
      child: charts.TimeSeriesChart(
        [chart],
        animate: true,
        defaultRenderer: charts.BarRendererConfig(
          maxBarWidthPx: barWidth,
        ),
        secondaryMeasureAxis: charts.NumericAxisSpec(
          showAxisLine: showPrimaryAxisLine,
          tickFormatterSpec: charts.BasicNumericTickFormatterSpec(
            primaryAxisFormatter ??
                (value) => value.toString().replaceAll(".0", "") + " F",
          ),
        ),
        primaryMeasureAxis: charts.NumericAxisSpec(
          renderSpec: charts.NoneRenderSpec(),
        ),
        domainAxis: charts.DateTimeAxisSpec(
          showAxisLine: showDomainAxisLine,
          tickFormatterSpec: charts.BasicDateTimeTickFormatterSpec(
            domainAxisFormatter ?? (datetime) => datetime.day.toString(),
          ),
          tickProviderSpec: charts.DayTickProviderSpec(
            increments: increments,
          ),
        ),
        layoutConfig: charts.LayoutConfig(
          leftMarginSpec: charts.MarginSpec.fixedPixel(0),
          topMarginSpec: charts.MarginSpec.fixedPixel(0),
          rightMarginSpec: charts.MarginSpec.fixedPixel(
            showPrimaryAxis ? AppSpacings.xxl.toInt() : 0,
          ),
          bottomMarginSpec: charts.MarginSpec.fixedPixel(AppSpacings.m.toInt()),
        ),
        behaviors: [
          charts.LinePointHighlighter(
            showHorizontalFollowLine:
                charts.LinePointHighlighterFollowLineType.none,
            showVerticalFollowLine:
                charts.LinePointHighlighterFollowLineType.nearest,
          ),
          charts.SelectNearest(
            eventTrigger: charts.SelectionTrigger.tapAndDrag,
          ),
          // charts.LinePointHighlighter(
          //   symbolRenderer: _CustomCircleSymbolRenderer(),
          // ),
          // charts.InitialSelection(
          //   selectedDataConfig: [
          //     charts.SeriesDatumConfig<String>(
          //       _chartId,
          //       "${DateTime.now().day}",
          //     )
          //   ],
          // ),
          //LinePointHighlighter(symbolRenderer: _CustomCircleSymbolRenderer(pointerValue: 12))
        ],
      ),
    );
  }
}

class ChartBox extends charts.CustomSymbolRenderer {
  @override
  Widget build(
    BuildContext context, {
    Color? color,
    required Size size,
    bool enabled = true,
  }) {
    return AppContainer(
      padding: EdgeInsets.only(
        left: AppSpacings.s,
        right: AppSpacings.s,
        top: AppSpacings.xs,
        bottom: AppSpacings.xs,
      ),
      color: NeutralColors.neutral200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Dépenses du 23/04/22",
            style: AppTypography.body?.tiny?.copyWith(
              color: NeutralColors.disabledTextColor,
            ),
          ),
          Text(
            "98.514 F CFA",
            style: AppTypography.body?.bTiny,
          ),
        ],
      ),
    );
  }
}

class _CustomCircleSymbolRenderer extends charts.CircleSymbolRenderer {
  @override
  Widget build(
    BuildContext context, {
    Color? color,
    required Size size,
    bool enabled = true,
  }) {
    return AppContainer(
      padding: EdgeInsets.only(
        left: AppSpacings.s,
        right: AppSpacings.s,
        top: AppSpacings.xs,
        bottom: AppSpacings.xs,
      ),
      color: NeutralColors.neutral200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Dépenses du 23/04/22",
            style: AppTypography.body?.tiny?.copyWith(
              color: NeutralColors.disabledTextColor,
            ),
          ),
          Text(
            "98.514 F CFA",
            style: AppTypography.body?.bTiny,
          ),
        ],
      ),
    );
  }

  @override
  void paint(
    charts.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    charts.Color? fillColor,
    charts.FillPatternType? fillPattern,
    charts.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    final text = "Dépenses au ";
    super.paint(
      canvas,
      bounds,
      dashPattern: dashPattern,
      fillColor: fillColor,
      strokeColor: strokeColor,
      strokeWidthPx: strokeWidthPx,
    );
    canvas.drawRect(
        Rectangle(bounds.left - 25, bounds.top - 40, bounds.width + 103,
            bounds.height + 25),
        strokeWidthPx: 1,
        fill: charts.Color.white,
        stroke: charts.Color.fromHex(code: "#0C29FF"));
    var textStyle = style.TextStyle();
    textStyle.fontFamily = "FuturaPTMediumBold";
    textStyle.color = charts.Color.black;
    textStyle.fontSize = 12;
    canvas.drawText(TextElement(text, style: textStyle),
        (bounds.left).round() - 20, (bounds.top - 35).round());
  }
}
