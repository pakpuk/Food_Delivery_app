import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/card_model.dart';
import 'package:food_delivery_app/Model/food_model.dart';

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
    return const Placeholder();
  }
}
