import 'package:flutter/material.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).colorScheme.secondary)),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [Text('\$0.99'), Text('Delivery fee')],
          ),
          Column(
            children: [Text('15-20 min'), Text('Delivery time')],
          )
        ],
      ),
    );
  }
}
