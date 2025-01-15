import 'package:flutter/material.dart';
import 'package:grume_food_delivery/Themes/screen_size.dart';

ThemeData darkTheme(BuildContext context) {
  ScreenSize.init(context);
  return ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Colors.deepOrange,
      secondary: Colors.tealAccent,
      background: Colors.black,
      surface: Colors.grey[850]!,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onBackground: Colors.white,
      onSurface: Colors.white70,
    ),
    fontFamily: 'RubikVinyl',
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: ScreenSize.responsiveText(7),
        fontWeight: FontWeight.bold,
        color: Colors.orangeAccent,
        fontFamily: 'Atma',
      ),
      bodyLarge: TextStyle(
        fontSize: 22,
        fontFamily: 'Permanent_Marker',
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'RobotoCondensed',
        color: Colors.grey[400],
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepOrange,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.tealAccent,
    ),
  );
}
