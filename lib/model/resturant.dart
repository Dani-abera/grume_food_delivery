import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';

import 'cart_item.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic Cheeseburger 🍔",
      description:
          "A juicy beef patty topped with melted cheddar cheese, crisp lettuce, ripe tomatoes, pickles, onions, and a dollop of mayo, all nestled in a toasted sesame bun.",
      imagePath: "images/burger/Burger7.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "A savory beef patty smothered in tangy BBQ sauce, crispy bacon strips, cheddar cheese, fried onion rings, and a layer of lettuce and tomatoes, served on a brioche bun.",
      imagePath: "images/burger/burger6.png",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger 🍄",
      description:
          "A beef patty topped with sautéed mushrooms, melted Swiss cheese, caramelized onions, and garlic aioli, all inside a toasted ciabatta roll.",
      imagePath: "images/burger/Burger5.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Veggie Burger 🌱",
      description:
          "A hearty veggie patty made from black beans, quinoa, and roasted vegetables, topped with avocado, fresh spinach, tomatoes, and a zesty chipotle mayo, served on a whole grain bun.",
      imagePath: "images/burger/Burger4.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger 🌶️",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/burger/Burger2.png",
      price: 9.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),

    // Dessert

    Food(
      name: "Apple Pie",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/dessert/Apple Pie.png",
      price: 9.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/dessert/Cheesecake.png",
      price: 9.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Cupcakes",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/dessert/Cupcakes.png",
      price: 9.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Dessert Food",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/dessert/dessert food.png",
      price: 9.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Ice Cream",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/dessert/Ice Cream.png",
      price: 9.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),

    // drink
    Food(
      name: "Coffee",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/drink/Coffee ☕.png",
      price: 9.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Hot Chocolate",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/drink/Hot Chocolate.png",
      price: 9.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/drink/Iced Tea.png",
      price: 9.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Milkshake",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/drink/Milkshake.png",
      price: 9.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Mocktail",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/drink/Mocktail.png",
      price: 9.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),

    // salad
    Food(
      name: "Salad",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/salad/salad1.png",
      price: 9.99,
      category: FoodCategory.salade,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Salad",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/salad/salad2.png",
      price: 9.99,
      category: FoodCategory.salade,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Salad",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/salad/salad3.png",
      price: 9.99,
      category: FoodCategory.salade,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Salad",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/salad/salad4.png",
      price: 9.99,
      category: FoodCategory.salade,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Salad",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/salad/salad5.png",
      price: 9.99,
      category: FoodCategory.salade,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),

    // side
    Food(
      name: "Baked Beans",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/side/Baked Beans.png",
      price: 9.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Coleslaw",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/side/Coleslaw.png",
      price: 9.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Corn on the cob",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/side/Corn on the Cob.png",
      price: 9.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "French fries",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/side/French fries.png",
      price: 9.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "A crispy fried chicken breast dipped in spicy buffalo sauce, topped with blue cheese dressing, lettuce, and pickles, all in a toasted brioche bun.",
      imagePath: "images/side/Garlic Bread.png",
      price: 9.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Bacon", price: 0.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Fried Egg", price: 1.75),
        Addon(name: "Grilled Onions", price: 0.75),
      ],
    ),
  ];
  /*

  Getters

   */
  List<Food> get menu => _menu;

  /*
   Operation

   */
  final List<CartItem> cart = [];

  // Add to Cart
  void addToCart(Food food, List<Addon> selectedAddon) {
    CartItem? cartItems = cart.firstWhereOrNull((item) {
      // check if the food item is the same
      bool isSameFood = item.food == food;
      // check if the list of addons are the same
      bool isSameAddon =
          ListEquality().equals(item.selectedAddons, selectedAddon);
      return isSameAddon && isSameFood;
    });
    // if the item already exist increase the quantity
    if (cartItems != null) {
      cartItems.quantity++;
    } else {
      cart.add(CartItem(
          selectedAddons: selectedAddon,
          food: food,
          quantity: cartItems!.quantity));
    }
    notifyListeners();
  }

  // remove from Cart
  void removeFromCart(CartItem cartItems) {
    int cartIndex = cart.indexOf(cartItems);
    if (cartIndex != -1) {
      if (cart[cartIndex].quantity > 1) {
        cart[cartIndex].quantity--;
      } else {
        cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPriceOfCart() {
    double total = 0.0;
    for (CartItem cartItems in cart) {
      double itemTotal = cartItems.food.price;
      for (Addon addon in cartItems.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItems.quantity;
    }
    return total;
  }

  // get total number of item in cart

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItems in cart) {
      totalItemCount += cartItems.quantity;
    }
    return totalItemCount;
  }

  // Clear Cart
  void clearCart() {
    cart.clear();
    notifyListeners();
  }

/*
   Helpers
    */

// generate receipts
// format double value in to money
// format list of Addon into string summary
}
