import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/card_model.dart';
import 'package:food_delivery_app/Model/restaurant_model.dart';
import 'package:provider/provider.dart';

class MyCardtileWidget extends StatelessWidget {
  const MyCardtileWidget({super.key, required this.cardItem});
  final CardModel cardItem;
  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantModel>(
      builder: (context, restaurant, child) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(cardItem.food.imagepath),
                    ),
                    Column(
                      children: [
                        Text(cardItem.food.name),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(cardItem.food.price.toString())
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
