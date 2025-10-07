import 'package:flutter/material.dart';

class SliverAppBarComponant extends StatelessWidget {
  const SliverAppBarComponant(
      {super.key, required this.title, required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      actions: [
        IconButton(
          onPressed: () => Navigator.push,
          icon: Icon(
            Icons.shopping_cart,
            color: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
      floating: false,
      pinned: true,
      title: Text('Subset Dinner'),
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        title: Text(title),
      ),
    );
  }
}
