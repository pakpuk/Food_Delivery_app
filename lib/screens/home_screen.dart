import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/my_current_locationwidget.dart';
import 'package:food_delivery_app/widgets/my_description_box.dart';
import 'package:food_delivery_app/widgets/my_drawer.dart';
import 'package:food_delivery_app/widgets/sliver_app_bar_componant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBarComponant(
                  title: '',
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
          body: Text("hello")),
    );
  }
}
