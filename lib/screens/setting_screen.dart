import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/themes/theme_provider.dart';
import 'package:food_delivery_app/widgets/myyy_drawer_tile.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: SingleChildScrollView(
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
              Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.only(top: 10, left: 25, right: 25),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "DarkMode",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    CupertinoSwitch(
                        value:
                            Provider.of<ThemeProvider>(context, listen: false)
                                .isDarkmode,
                        onChanged: (value) =>
                            Provider.of<ThemeProvider>(context, listen: false)
                                .toggleTheme())
                  ],
                ),
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
        ),
      )),
    );
  }
}
