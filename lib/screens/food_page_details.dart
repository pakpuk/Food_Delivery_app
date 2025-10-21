import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food_model.dart';

class FoodPageDetails extends StatefulWidget {
  final FoodModel food;
  const FoodPageDetails({
    super.key,
    required this.food,
  });

  @override
  State<FoodPageDetails> createState() => _FoodPageDetailsState();
}

class _FoodPageDetailsState extends State<FoodPageDetails> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
