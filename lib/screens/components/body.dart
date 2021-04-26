import 'package:analog_clock_and_alarm/screens/components/clock.dart';
import 'package:analog_clock_and_alarm/screens/components/country_card.dart';
import 'package:analog_clock_and_alarm/screens/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text("Newport Beach, USA | PST",
                  style: Theme.of(context).textTheme.bodyText1),
              TimeInHourAndMinute(),
              // Spacer(),
              Clock(),
              // Spacer(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CountryCard(
                      country: "New York, USA",
                      timeZone: "+3 HRS | EST",
                      iconSrc: "assets/icons/ic_liberty.svg",
                      time: "9:20",
                      periad: "PM",
                    ),
                    CountryCard(
                      country: "New York, USA",
                      timeZone: "+3 HRS | EST",
                      iconSrc: "assets/icons/ic_liberty.svg",
                      time: "9:20",
                      periad: "PM",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}