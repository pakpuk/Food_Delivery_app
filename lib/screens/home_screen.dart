import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food_model.dart';
import 'package:food_delivery_app/Model/restaurant_model.dart';
import 'package:food_delivery_app/screens/food_page_details.dart';
import 'package:food_delivery_app/widgets/my_current_locationwidget.dart';
import 'package:food_delivery_app/widgets/my_description_box.dart';
import 'package:food_delivery_app/widgets/my_drawer.dart';
import 'package:food_delivery_app/widgets/my_tab_bar.dart';
import 'package:food_delivery_app/widgets/foodtile_widget.dart';
import 'package:food_delivery_app/widgets/sliver_app_bar_componant.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategories.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<FoodModel> _filterMenuByCategory(
      FoodCategories category, List<FoodModel> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<FoodModel> fullMenu) {
    return FoodCategories.values.map((category) {
      List<FoodModel> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: categoryMenu.length,
          itemBuilder: (context, index) {
            var food = categoryMenu[index];
            return FoodTileWidget(
              food: food,
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodPageDetails(food: food)));
              },
            );
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBarComponant(
              title: MyTabBar(tabBarController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  MyCurrentLocationwidget(),
                  MyDescriptionBox(),
                ],
              ),
            )
          ],
          body: Consumer<RestaurantModel>(
              builder: (context, restaurant, child) => TabBarView(
                    children: getFoodInThisCategory(restaurant.menu),
                    controller: _tabController,
                  )),
        ));
  }
}
