import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.text, this.ontap, this.icon});
  final String text;
  final VoidCallback? ontap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
