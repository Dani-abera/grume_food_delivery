import 'package:flutter/material.dart';
import 'package:grume_food_delivery/component/my_button.dart';
import 'package:grume_food_delivery/model/resturant.dart';
import 'package:provider/provider.dart';
import '../model/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    // initialize selected Addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);
    List<Addon> currentlySelectAddons = [];
    for (Addon addon in food.availableAddons) {
      if (selectedAddons[addon] == true) {
        currentlySelectAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.food.imagePath),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.food.name,
                          style: Theme.of(context).textTheme.displayLarge),
                      SizedBox(
                        height: 10,
                      ),
                      Text(widget.food.description),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'ADD-ON\'S',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: widget.food.availableAddons.length,
                            itemBuilder: (context, index) {
                              Addon addon = widget.food.availableAddons[index];
                              return CheckboxListTile(
                                  value: widget.selectedAddons[addon],
                                  title: Text(addon.name),
                                  subtitle: Text(
                                    '\$${addon.price}',
                                  ),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.selectedAddons[addon] = value!;
                                    });
                                  });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      MyButton(
                          text: 'ADD TO CART',
                          onPressed: () =>
                              addToCart(widget.food, widget.selectedAddons)),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
