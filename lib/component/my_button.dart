import 'package:flutter/material.dart';

import '../Themes/screen_size.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(13),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary,
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(1, 3),
            ),
          ],
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Permanent_Marker',
              fontWeight: FontWeight.bold,
              fontSize: 25),
        )),
      ),
    );
  }
}
