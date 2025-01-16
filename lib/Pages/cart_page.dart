import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grume_food_delivery/component/my_cart_tile.dart';
import 'package:grume_food_delivery/model/resturant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;

      return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          actions: [
            // remove the cart items
            IconButton(
                onPressed: () {
                  userCart.isEmpty
                      ? Fluttertoast.showToast(
                          msg: 'This is a Toast message',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        )
                      : showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(
                                'Are You Sure want to remove the cart Items'),
                            actions: [
                              // cancel button
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel'),
                              ),
                              //approve Button
                              TextButton(
                                onPressed: () {
                                  restaurant.clearCart();
                                  Navigator.pop(context);
                                },
                                child: Text('Yes'),
                              ),
                            ],
                          ),
                        );
                },
                icon: Icon(Icons.delete))
          ],
        ),
        body: userCart.isEmpty
            ? Center(
                child: Text(
                  'Your cart is empty.',
                  style: TextStyle(fontSize: 18),
                ),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          final cartItem = userCart[index];
                          return MyCartTile(cartItem: cartItem);
                        }),
                  )
                ],
              ),
      );
    });
  }
}
