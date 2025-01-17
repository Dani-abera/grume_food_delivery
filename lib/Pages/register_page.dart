import 'package:flutter/material.dart';
import 'package:grume_food_delivery/auth/login_or_register.dart';

import 'package:grume_food_delivery/component/my_button.dart';
import 'package:grume_food_delivery/component/my_textfield.dart';

import '../auth/auth_service.dart';

class RegisterPage extends StatelessWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerConfirmPassword =
      TextEditingController();
  void register(BuildContext context) async {
    final authService = AuthService();
    if (_controllerPassword.text == _controllerConfirmPassword.text) {
      try {
        await authService.createUserWithEmailAndPassword(
            _controllerEmail.text, _controllerPassword.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Password don\'t match'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.account_box_rounded,
              size: 100,
              // color: Provider.of<ThemeProvider>(context)
              //     .themeData
              //     .colorScheme
              //     .inversePrimary)
              color: Theme.of(context).colorScheme.primary,
            ),
            //message

            Text('Let\'Create Account',
                style: Theme.of(context).textTheme.displayLarge),

            // email textField
            SizedBox(
              height: 25,
            ),
            MyTextfield(
                hintText: 'Email',
                prefixIcon: Icons.email,
                controller: _controllerEmail),

            // password textField
            MyTextfield(
                hintText: 'Password',
                prefixIcon: Icons.password,
                controller: _controllerPassword),

            //conform password textField
            MyTextfield(
                hintText: 'Confirm Password',
                prefixIcon: Icons.confirmation_num,
                controller: _controllerConfirmPassword),
            SizedBox(
              height: 25,
            ),

            // submit Button
            MyButton(text: 'Sign Up', onPressed: () => register(context)),
            SizedBox(
              height: 25,
            ),

            // Already a member?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?  ',
                  style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'LogIn Now!',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
