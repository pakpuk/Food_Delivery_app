import 'package:flutter/material.dart';

class MyCurrentLocationwidget extends StatelessWidget {
  const MyCurrentLocationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => OpenlocationSearchbox(context),
            child: Row(
              children: [
                Text(
                  "6901 Hollywood  Blv",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}

void OpenlocationSearchbox(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text("Your Location"),
            content: const TextField(
              decoration: InputDecoration(hintText: 'Search Location..'),
            ),
            actions: [
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Save'),
              )
            ],
          ));
}
