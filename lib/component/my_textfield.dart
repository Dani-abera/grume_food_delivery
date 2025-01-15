import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final bool isPassword;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Theme.of(context).colorScheme.background,
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.orangeAccent,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.orangeAccent, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'RobotoCondensed',
        ),
      ),
    );
  }
}
