import 'package:analog_clock_and_alarm/screens/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text("Newport Beach, USA | PST",
              style: Theme.of(context).textTheme.bodyText1),
          TimeInHourAndMinute()
        ],
      ),
    );
  }
}

