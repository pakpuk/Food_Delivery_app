import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget(
      {super.key,
      required this.title,
      required this.ontap,
      this.bgColor,
      required this.borderRadius,
      required this.padding});
  final String title;
  final VoidCallback ontap;
  final Color? bgColor;
  final double borderRadius;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
            color: bgColor ?? Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
    );
  }
}
