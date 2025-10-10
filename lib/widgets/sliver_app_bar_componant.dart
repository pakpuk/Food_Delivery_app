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
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      actions: [
        IconButton(
          onPressed: () => Navigator.push,
          icon: const Icon(
            Icons.shopping_cart,
          ),
        )
      ],
      floating: false,
      pinned: true,
      title: const Text('Sunset Dinner'),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.only(top: 0, left: 0, right: 0),
        background: child,
        title: Text(title),
      ),
    );
  }
}
