import 'package:flutter/material.dart';
import 'package:grume_food_delivery/component/my_quantity_selector.dart';
import 'package:grume_food_delivery/model/cart_item.dart';
import 'package:grume_food_delivery/model/resturant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.inversePrimary),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

                // food name and price
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartItem.food.name,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text('\$${cartItem.food.price}'),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                Expanded(child: Spacer()),

                // increment or decrement quantity
                MyQuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                    onIncrement: () {
                      restaurant.addToCart(
                          cartItem.food, cartItem.selectedAddons);
                    },
                    onDecrement: () {
                      restaurant.removeFromCart(cartItem);
                    })
              ],
            ),
            // addon

            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  ...cartItem.selectedAddons.map(
                    (addon) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: FilterChip(
                        label: Row(
                          children: [
                            Text(
                              addon.name,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '\$${addon.price.toString()}',
                            )
                          ],
                        ),
                        onSelected: (value) {},
                        shape: StadiumBorder(
                          side: BorderSide(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.onInverseSurface,
                        labelStyle: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
