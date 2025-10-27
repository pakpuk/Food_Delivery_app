import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/card_model.dart';
import 'package:food_delivery_app/Model/food_model.dart';
import 'package:food_delivery_app/Model/restaurant_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, required this.food, required this.cardItem});
  final FoodModel food;
  final CardModel cardItem;
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantModel>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.carditem;

        return Scaffold(
          body: ,
        );
      },
    );
  }
}
