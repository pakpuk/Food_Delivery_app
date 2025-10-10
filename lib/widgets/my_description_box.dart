import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(bottom: 25, left: 25, right: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).colorScheme.secondary)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  '0.99\$',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                Text("Delivery Fee",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary)),
              ],
            ),
            Column(
              children: [
                Text('15 - 30 min',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary)),
                Text("Delivery time",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
