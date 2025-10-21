import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food_model.dart';

class FoodTileWidget extends StatelessWidget {
  const FoodTileWidget({
    super.key,
    required this.food,
    required this.ontap,
  });
  final FoodModel food;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(food.name),
                      Text(
                        food.price.toString(),
                      ),
                      Text(food.discription),
                    ],
                  ),
                ),
                Image.asset(
                  "name",
                  height: 120,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
