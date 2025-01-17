import 'package:flutter/material.dart';
import 'package:grume_food_delivery/auth/auth_service.dart';
import 'package:grume_food_delivery/component/my_button.dart';
import 'package:grume_food_delivery/component/my_textfield.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controllerPassword = TextEditingController();

  final TextEditingController _controllerEmail = TextEditingController();

  void login() async {
    // Fill out authentication here.....

    final authService = AuthService();

    try {
      await authService.signInWithEmailAndPassword(
          _controllerEmail.text, _controllerPassword.text);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
    // navigate to home page
    //Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
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
            SizedBox(
              height: 25,
            ),

            // submit Button
            MyButton(text: 'LogIn', onPressed: login),
            SizedBox(
              height: 25,
            ),

            // not a member sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Is Not A Member?  ',
                  style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register Now!',
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
