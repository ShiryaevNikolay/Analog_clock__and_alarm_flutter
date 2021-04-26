import 'dart:async';
import 'dart:math';

import 'package:analog_clock_and_alarm/constants.dart';
import 'package:analog_clock_and_alarm/screens/components/clock_painter.dart';
import 'package:analog_clock_and_alarm/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        color: kShadowColor.withOpacity(0.14),
                        blurRadius: 64)
                  ]),
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: ClockPainer(context, _dateTime),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              "assets/icons/ic_sun.svg",
              height: 24,
              width: 24,
              color: Theme.of(context).primaryColor,
            ))
      ],
    );
  }
}
