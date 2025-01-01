import 'package:flutter/material.dart';
import 'package:grume_food_delivery/Themes/theme_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              // color: Provider.of<ThemeProvider>(context)
              //     .themeData
              //     .colorScheme
              //     .inversePrimary)
              color: Theme.of(context).colorScheme.primary,
            ),
            //message

            Text('Grume Food Delivery App',
                style: Theme.of(context).textTheme.displayLarge),

            ElevatedButton(
                onPressed: () =>
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(),
                child: Text('Button'))
            // email textField
            // password textField
            // submit Button
            // not a member sign up
          ],
        ),
      ),
    );
  }
}
