import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food_model.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabBarController;
  const MyTabBar({super.key, required this.tabBarController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategories.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabBarController, tabs: _buildCategoryTabs()),
    );
  }
}
