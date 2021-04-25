import 'package:analog_clock_and_alarm/screens/home_screen.dart';
import 'package:analog_clock_and_alarm/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Analog clock & alarm',
      theme: themeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.light,
      home: HomeScreen(),
    );
  }
}
