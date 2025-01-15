import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grume_food_delivery/Themes/theme_provider.dart';
import 'package:provider/provider.dart';

import '../Themes/light_mode.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('Setting Page'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.only(left: 25, top: 10, right: 25),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Provider.of<ThemeProvider>(context, listen: false)
                              .themeData ==
                          lightTheme
                      ? 'Dark Mode'
                      : 'Light Mode',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                CupertinoSwitch(
                  value: false,
                  // Provider.of<ThemeProvider>(context, listen: false)
                  //         .themeData !=
                  //     lightTheme,
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
