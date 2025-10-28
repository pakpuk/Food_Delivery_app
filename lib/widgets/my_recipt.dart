import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/restaurant_model.dart';
import 'package:provider/provider.dart';

class MyRecipt extends StatelessWidget {
  const MyRecipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Thank you for order !',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary)),
              child: Consumer<RestaurantModel>(
                builder: (context, restaurant, child) =>
                    Text(restaurant.displayCartRecipt()),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          const   Text('Esitamted Delivery time is : 4:10 PM');
          ],
        ),
      ),
    );
  }
}
