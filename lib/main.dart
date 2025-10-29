import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/restaurant_model.dart';
import 'package:food_delivery_app/common/themes/theme_provider.dart';
import 'package:food_delivery_app/screens/log_iin_screen.dart';
import 'package:food_delivery_app/screens/test_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => RestaurantModel())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: LogInScreen(),
    );
  }
}
