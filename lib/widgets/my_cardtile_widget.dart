import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/card_model.dart';
import 'package:food_delivery_app/Model/restaurant_model.dart';
import 'package:food_delivery_app/widgets/my_quantity_selector.dart';
import 'package:provider/provider.dart';

class MyCardtileWidget extends StatelessWidget {
  const MyCardtileWidget({super.key, required this.cardItem});
  final CardModel cardItem;
  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantModel>(
      builder: (context, restaurant, child) {
        return Container(
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.secondary),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          cardItem.food.imagepath,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cardItem.food.name),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            cardItem.food.price.toString(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          const Spacer(),
                        ],
                      ),
                      MyQuantitySelector(
                          quantity: cardItem.quantity,
                          food: cardItem.food,
                          onDecrement: () {
                            restaurant.removeFromCard(cardItem);
                          },
                          onIncrement: () {
                            restaurant.addToCart(
                                cardItem.food, cardItem.selectedAddons);
                          })
                    ],
                  ),
                ),
                SizedBox(
                  height: cardItem.selectedAddons.isEmpty ? 0 : 60,
                  child: ListView(
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      children: cardItem.selectedAddons
                          .map((addon) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      Text(addon.name),
                                      Text(
                                        addon.price.toString(),
                                      )
                                    ],
                                  ),
                                  onSelected: (value) {},
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  labelStyle: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 12,
                                  ),
                                ),
                              ))
                          .toList()),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
