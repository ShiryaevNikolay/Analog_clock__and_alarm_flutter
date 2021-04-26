import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainer extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;

  ClockPainer(this.context, this.dateTime);

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    // Расчитываение минутной стрелки
    double minX =
        centerX + size.width * 0.35 * cos((dateTime.minute * 6) * pi / 180);
    double minY =
        centerX + size.width * 0.35 * sin((dateTime.minute * 6) * pi / 180);

    // Минутная стрелка
    canvas.drawLine(
        center,
        Offset(minX, minY),
        Paint()
          ..color = Theme.of(context).accentColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    // Расчитываение часовой стрелки
    // dateTime.hour * 30 потому что 360 / 12 = 30
    // dateTime.minute * 0.5 каждую минуту мы хотим повернуть нашу часовую линию
    double hourX = centerX +
        size.width *
            0.3 *
            cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerX +
        size.width *
            0.3 *
            sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);

    // Часовая стрелка
    canvas.drawLine(
        center,
        Offset(hourX, hourY),
        Paint()
          ..color = Theme.of(context).colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    // Расчитывание секундной стрелки
    // size.width * 0.4 находим нашу высоту
    // dateTime.second * 6 потому что 360 / 60 = 6
    double secondX =
        centerX + size.width * 0.4 * cos((dateTime.second * 6) * pi / 180);
    double secondY =
        centerX + size.width * 0.4 * sin((dateTime.second * 6) * pi / 180);

    // Секундная стрелка
    canvas.drawLine(center, Offset(secondX, secondY),
        Paint()..color = Theme.of(context).primaryColor);

    // Центральные круги
    Paint dotPainter = Paint()
      ..color = Theme.of(context).primaryIconTheme.color!;
    canvas.drawCircle(center, 24, dotPainter);
    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dotPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
