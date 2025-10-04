import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/text_manager.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(16)),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.tertiary),
        ),
      ),
    );
  }
}
