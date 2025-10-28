import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/restaurant_model.dart';
import 'package:food_delivery_app/common/text_manager.dart';
import 'package:food_delivery_app/widgets/m_button.dart';
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
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text(TextManager.warningClearcart),
                              actions: [
                                MyButtonWidget(
                                    title: 'yes',
                                    ontap: () {
                                      Navigator.pop(context);
                                      restaurant.cleaCart();
                                    },
                                    borderRadius: 8,
                                    padding: const EdgeInsets.all(8)),
                                MyButtonWidget(
                                    title: 'cancel',
                                    ontap: () {
                                      Navigator.pop(context);
                                    },
                                    borderRadius: 8,
                                    padding: const EdgeInsets.all(8))
                              ],
                            ));
                  },
                  icon: const Icon(Icons.clear))
            ],
            title: const Text(TextManager.cartText),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(child: Text('Cart is Empty..')))
                        : Expanded(
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
              ),
              MyButtonWidget(
                  title: 'Payment',
                  ontap: () {},
                  borderRadius: 12,
                  padding: const EdgeInsets.all(15))
            ],
          ),
        );
      },
    );
  }
}
