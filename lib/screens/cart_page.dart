import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/restaurant_model.dart';
import 'package:food_delivery_app/common/text_manager.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

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
          appBar: AppBar(
            title: const Text(TextManager.cartText),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {
                        final cartItem = userCart[index];
                        return ListTile(
                          title: Text(cartItem.food.name),
                        );
                      }))
            ],
          ),
        );
      },
    );
  }
}
