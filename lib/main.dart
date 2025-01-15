import 'package:flutter/material.dart';

import 'package:grume_food_delivery/Themes/dark_mode.dart';
import 'package:grume_food_delivery/Themes/light_mode.dart';
import 'package:grume_food_delivery/Themes/theme_provider.dart';
import 'package:grume_food_delivery/auth/login_or_register.dart';
import 'package:grume_food_delivery/model/resturant.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => Restaurant(),
      )
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lightTheme(context),
        darkTheme: darkTheme(context),
        themeMode: Provider.of<ThemeProvider>(context).themeMode,
        home: LoginOrRegister());
  }
}
