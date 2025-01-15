import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final IconData icons;
  final String text;
  final Function() onTop;
  const MyDrawerTile(
      {super.key,
      required this.icons,
      required this.text,
      required this.onTop});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: ListTile(leading: Icon(icons), title: Text(text), onTap: onTop),
    );
  }
}
