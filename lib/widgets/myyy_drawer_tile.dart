import 'package:flutter/material.dart';

class MyDrawertileWidget extends StatelessWidget {
  const MyDrawertileWidget(
      {super.key, required this.text, required this.ontap, this.icon});
  final String text;
  final VoidCallback ontap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        onTap: ontap,
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      ),
    );
  }
}
