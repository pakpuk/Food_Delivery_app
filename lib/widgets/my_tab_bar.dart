import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabBarController;
  const MyTabBar({super.key, required this.tabBarController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabBarController,
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.person),
          ),
          Tab(
            icon: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
