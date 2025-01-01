import 'package:flutter/material.dart';
import 'package:grume_food_delivery/Themes/screen_size.dart';

ThemeData lightTheme(BuildContext context) {
  ScreenSize.init(context);
  return ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Colors.orangeAccent,
      secondary: Colors.redAccent,
      background: Colors.white,
      surface: Colors.grey[100]!,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: Colors.black,
      onSurface: Colors.black87,
    ),
    fontFamily: 'RobotoCondensed',
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: ScreenSize.responsiveText(7),
        fontWeight: FontWeight.bold,
        color: Colors.orange[800],
        fontFamily: 'Atma',
      ),
      bodyLarge: TextStyle(
        fontSize: 22,
        fontFamily: 'RubikVinyl',
        color: Colors.black87,
        //color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'Permanent_Marker',
        color: Colors.black54,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.orangeAccent,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.redAccent,
    ),
  );
}
