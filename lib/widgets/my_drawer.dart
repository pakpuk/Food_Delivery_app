import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/myyy_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_outlined,
              size: 88,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawertileWidget(
            text: 'H O M E',
            ontap: () {},
            icon: Icons.home,
          ),
          MyDrawertileWidget(
            text: 'S E T T I N G S',
            ontap: () {},
            icon: Icons.settings,
          )
        ],
      ),
    );
  }
}
