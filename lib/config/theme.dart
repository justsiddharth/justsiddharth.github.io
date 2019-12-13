import 'package:flutter/material.dart';

MaterialColor colorPicker(String choice) {
  Map<int, Color> lite = {
    50: Color.fromRGBO(244, 150, 26, .1),
    100: Color.fromRGBO(244, 150, 26, .2),
    200: Color.fromRGBO(244, 150, 26, .3),
    300: Color.fromRGBO(244, 150, 26, .4),
    400: Color.fromRGBO(244, 150, 26, .5),
    500: Color.fromRGBO(244, 150, 26, .6),
    600: Color.fromRGBO(244, 150, 26, .7),
    700: Color.fromRGBO(244, 150, 26, .8),
    800: Color.fromRGBO(244, 150, 26, .9),
    900: Color.fromRGBO(244, 150, 26, 1),
  };
  Map<int, Color> dark = {
    50: Color.fromRGBO(3, 28, 40, .1),
    100: Color.fromRGBO(3, 28, 40, .2),
    200: Color.fromRGBO(3, 28, 40, .3),
    300: Color.fromRGBO(3, 28, 40, .4),
    400: Color.fromRGBO(3, 28, 40, .5),
    500: Color.fromRGBO(3, 28, 40, .6),
    600: Color.fromRGBO(3, 28, 40, .7),
    700: Color.fromRGBO(3, 28, 40, .8),
    800: Color.fromRGBO(3, 28, 40, .9),
    900: Color.fromRGBO(3, 28, 40, 1),
  };

  MaterialColor darkColor = MaterialColor(0xFF011B28, dark);
  MaterialColor liteColor = MaterialColor(0xFFF4961A, lite);

  if (choice == 'dark') return darkColor;
  if (choice == 'lite') return liteColor;
}

darkTheme(context) {
  MaterialColor dark = colorPicker('dark');
  MaterialColor lite = colorPicker('lite');
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: lite,
    primaryColor: dark,
    accentColor: lite,
    disabledColor: Colors.grey,
    cardColor: lite,
    canvasColor: dark,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.dark(),
          buttonColor: lite,
          splashColor: lite,
        ),
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );
}

lightTheme(context) {
  MaterialColor dark = colorPicker('dark');
  MaterialColor lite = colorPicker('lite');
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: dark,
    primaryColor: lite,
    accentColor: dark,
    disabledColor: Colors.grey,
    cardColor: dark,
    canvasColor: lite,
    brightness: Brightness.light,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.light(),
          buttonColor: dark,
          splashColor: dark,
        ),
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );
}
