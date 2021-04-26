import 'package:analog_clock_and_alarm/models/theme_provider.dart';
import 'package:analog_clock_and_alarm/screens/home_screen.dart';
import 'package:analog_clock_and_alarm/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
          builder: (context, theme, child) => MaterialApp(
                title: 'Analog clock & alarm',
                theme: themeData(context),
                darkTheme: darkThemeData(context),
                themeMode:
                    theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
                home: HomeScreen(),
              )),
    );
  }
}
