import 'package:flutter/material.dart';

import '../../../design_tokens/layout_and_spacing/app_gaps.dart';
import '../../../design_tokens/typography/typography.dart';
import 'app_date_item_picker.dart';

class AppDatePicker extends StatefulWidget {
  AppDatePicker({
    Key? key,
    this.onChanged,
    this.selectedDate,
    this.startDate,
    this.endDate,
  }) : super(key: key);

  final DateTime? selectedDate;

  final void Function(DateTime? date)? onChanged;

  final DateTime? startDate;

  final DateTime? endDate;

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  final TextEditingController _dayController = TextEditingController();

  final TextEditingController _monthController = TextEditingController();

  final TextEditingController _yearController = TextEditingController();

  final List<String> _months = [
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
    "Décembre"
  ];

  DateTime _date = DateTime(0);

  void _onDayChanged(int? day) {
    setState(() {
      _dayController.text = day.toString();
      _date = DateTime(_date.year, _date.month, day!);
    });
  }

  void _onMonthChanged(int? month) {
    setState(() {
      _monthController.text = _months[month! - 1];
      _date = DateTime(_date.year, month, _date.day);
    });
  }

  void _onYearChanged(int? year) {
    setState(() {
      _yearController.text = year.toString();
      _date = DateTime(year!, _date.month, _date.day);
    });
  }

  int get _numberOfDays {
    if (_monthController.text.trim().isEmpty &&
        _yearController.text.trim().isEmpty) {
      return 31;
    } else if (_monthController.text.trim().isNotEmpty &&
        _yearController.text.trim().isEmpty) {
      if (_date.month == 2) {
        return 29;
      } else if (_date.month % 2 == 0) {
        return 30;
      } else {
        return 31;
      }
    } else if (_monthController.text.trim().isEmpty &&
        _yearController.text.trim().isNotEmpty) {
      return 31;
    } else {
      return _daysInMonth(_date);
    }
  }

  int _daysInMonth(DateTime date) {
    var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = new DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppDateItemPicker<int>(
            controller: _dayController,
            selectedItem: widget.selectedDate?.day,
            placeHolder: "JJ",
            selection: List.generate(31, (index) => index + 1),
            onChanged: _onDayChanged,
          ),
        ),
        AppGaps.s,
        Expanded(
          child: AppDateItemPicker<int>(
            controller: _monthController,
            selectedItem: widget.selectedDate?.month,
            placeHolder: "MM",
            selection: List.generate(12, (index) => index + 1),
            selectionItemReplacement: (item, index) => Text(
              _months[index],
              style: AppTypography.body!.medium,
            ),
            onChanged: _onMonthChanged,
          ),
        ),
        AppGaps.s,
        Expanded(
          child: AppDateItemPicker<int>(
            controller: _yearController,
            selectedItem: widget.selectedDate?.year,
            placeHolder: "AAAA",
            selection: List.generate(
              DateTime.now().year,
              (index) => DateTime.now().year - index,
            ),
            onChanged: _onYearChanged,
          ),
        ),
      ],
    );
  }
}
