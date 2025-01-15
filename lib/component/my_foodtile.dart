import 'package:flutter/material.dart';
import 'package:grume_food_delivery/Themes/theme_provider.dart';
import 'package:provider/provider.dart';

import '../model/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const MyFoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Card(
            elevation: 20.3,
            // surfaceTintColor: Colors.blue,
            // color: Colors.green,
            shadowColor: Theme.of(context).colorScheme.primary,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.name,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text('\$${food.price}'),
                        Text(food.description)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      food.imagePath,
                      height: 120,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
