import 'package:siddharthjain/pages/homepage.dart';
import 'package:flutter/material.dart';

import 'config/theme.dart';
import 'widgets/ThemeSwitcher.dart';

void main() => runApp(WebApp());

class WebApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: SiddharthApp(),
    );
  }
}

class SiddharthApp extends StatelessWidget {
  const SiddharthApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siddharth Jain',
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      home: HomePage(),
    );
  }
}
