import 'package:flutter/material.dart';
import 'package:grume_food_delivery/model/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCatagoryTab() {
    return FoodCategory.values.map((catagory) {
      return Tab(
        text: catagory.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TabBar(controller: tabController, tabs: _buildCatagoryTab()));
  }
}
