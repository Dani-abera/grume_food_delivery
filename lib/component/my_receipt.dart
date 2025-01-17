import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/resturant.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 25.0, right: 25.0, bottom: 25.0, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thank You For Your Order'),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  borderRadius: BorderRadius.circular(12)),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) => Text(
                  restaurant.displayReceipt(),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text('Estimate Delivery time is: 4:0 pm'),
          ],
        ),
      ),
    );
  }
}
