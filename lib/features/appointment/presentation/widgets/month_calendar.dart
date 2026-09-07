import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthCalendar extends StatelessWidget {
  final DateTime visibleMonth;
  final DateTime selectedDate;
  final ValueChanged<DateTime> onDateSelected;
  final VoidCallback? onPrevMonth;
  final VoidCallback? onNextMonth;

  const MonthCalendar({
    super.key,
    required this.visibleMonth,
    required this.selectedDate,
    required this.onDateSelected,
    this.onPrevMonth,
    this.onNextMonth,
  });

  static const _weekdays = ['ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ', 'ВС'];

  static const _monthNames = [
    'Январь',
    'Февраль',
    'Март',
    'Апрель',
    'Май',
    'Июнь',
    'Июль',
    'Август',
    'Сентябрь',
    'Октябрь',
    'Ноябрь',
    'Декабрь',
  ];

  int get _daysInMonth =>
      DateTime(visibleMonth.year, visibleMonth.month + 1, 0).day;

  int get _leadingBlanks =>
      (DateTime(visibleMonth.year, visibleMonth.month, 1).weekday - 1) % 7;

  static const _calendarBg = Color(0xFFF1F1F3);
  static const _calendarArrow = Color(0xFFB9B9BE);
  static const _monthLabelColor = Color(0xFFB9B9BE);
  static const _dayTextColor = Color(0xFF1A1A1A);
  static const _selectedDayBg = Color(0xFF1C5C9E);
  static const _selectedDayText = Colors.white;

  @override
  Widget build(BuildContext context) {
    final totalCells = _leadingBlanks + _daysInMonth;
    final rowCount = (totalCells / 7).ceil();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: _calendarBg,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onPrevMonth,
                icon: const Icon(Icons.chevron_left,
                    color: _calendarArrow, size: 26),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              Text(
                _monthNames[visibleMonth.month - 1],
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: _monthLabelColor,
                ),
              ),
              IconButton(
                onPressed: onNextMonth,
                icon: const Icon(Icons.chevron_right,
                    color: _calendarArrow, size: 26),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          const SizedBox(height: 6),
          const Divider(height: 1, thickness: 1, color: Color(0xFFDFDFE3)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _weekdays
                .map((d) => SizedBox(
                      width: 34,
                      child: Text(
                        d,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: _dayTextColor,
                        ),
                      ),
                    ))
                .toList(),
          ),
          const SizedBox(height: 8),
          for (int row = 0; row < rowCount; row++) _buildWeekRow(row),
        ],
      ),
    );
  }

  Widget _buildWeekRow(int row) {
    final cells = <Widget>[];
    for (int col = 0; col < 7; col++) {
      final cellIndex = row * 7 + col;
      final dayNum = cellIndex - _leadingBlanks + 1;
      if (dayNum < 1 || dayNum > _daysInMonth) {
        cells.add(const SizedBox(width: 34, height: 42));
        continue;
      }
      final date = DateTime(visibleMonth.year, visibleMonth.month, dayNum);
      final isSelected = date.year == selectedDate.year &&
          date.month == selectedDate.month &&
          date.day == selectedDate.day;

      cells.add(
        GestureDetector(
          onTap: () => onDateSelected(date),
          child: Container(
            width: 34,
            height: 42,
            alignment: Alignment.center,
            child: Container(
              width: 34,
              height: 34,
              alignment: Alignment.center,
              decoration: isSelected
                  ? const BoxDecoration(
                      color: _selectedDayBg,
                      shape: BoxShape.circle,
                    )
                  : null,
              child: Text(
                '$dayNum',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                  color: isSelected ? _selectedDayText : _dayTextColor,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: cells,
      ),
    );
  }
}