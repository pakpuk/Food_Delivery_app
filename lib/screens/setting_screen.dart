import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/myyy_drawer_tile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 32,
                  child: Image.asset("name"),
                ),
                Text(
                  "Ghaith",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            MyDrawertileWidget(
              ontap: () {},
              text: 'Personal informations',
              icon: Icons.person,
            )
          ],
        ),
      )),
    );
  }
}
