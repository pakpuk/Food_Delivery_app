import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food_model.dart';
import 'package:food_delivery_app/widgets/my_current_locationwidget.dart';
import 'package:food_delivery_app/widgets/my_description_box.dart';
import 'package:food_delivery_app/widgets/my_drawer.dart';
import 'package:food_delivery_app/widgets/my_tab_bar.dart';
import 'package:food_delivery_app/widgets/sliver_app_bar_componant.dart';

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
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext, index) =>
                      Text("first tab items")),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext, index) =>
                      Text("first tab items")),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext, index) =>
                      Text("first tab items")),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext, index) =>
                      Text("first tab items")),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext, index) =>
                      Text("first tab items")),
            ],
            controller: _tabController,
          )),
    );
  }
}
