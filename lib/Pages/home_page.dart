import 'package:flutter/material.dart';
import 'package:grume_food_delivery/Pages/food_page.dart';
import 'package:grume_food_delivery/component/my_current_location.dart';
import 'package:grume_food_delivery/component/my_description.dart';
import 'package:grume_food_delivery/component/my_drawer.dart';
import 'package:grume_food_delivery/component/my_foodtile.dart';
import 'package:grume_food_delivery/component/my_silver_app_bar.dart';
import 'package:grume_food_delivery/component/my_tab_bar.dart';
import 'package:grume_food_delivery/model/food.dart';
import 'package:grume_food_delivery/model/resturant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

// filter Food By Category
  List<Food> _filterFoodByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterFoodByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFoodTile(
            food: food,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => FoodPage(food: food)));
            },
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // my current location and description box
                MyCurrentLocation(),

                // description box
                MyDescription(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
