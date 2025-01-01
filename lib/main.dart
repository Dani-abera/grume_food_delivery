import 'package:flutter/material.dart';
import 'package:grume_food_delivery/Pages/login_page.dart';
import 'package:grume_food_delivery/Themes/dark_mode.dart';
import 'package:grume_food_delivery/Themes/light_mode.dart';
import 'package:grume_food_delivery/Themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
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
      home: LoginPage(),
    );
  }
}
