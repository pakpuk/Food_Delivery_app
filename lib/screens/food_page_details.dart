import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food_model.dart';

class FoodPageDetails extends StatefulWidget {
  final FoodModel food;
  const FoodPageDetails({
    super.key,
    required this.food,
  });

  @override
  State<FoodPageDetails> createState() => _FoodPageDetailsState();
}

class _FoodPageDetailsState extends State<FoodPageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(widget.food.imagepath),
            Text(
              widget.food.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              widget.food.price.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary),
            ),
            Text(
              widget.food.discription,
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: widget.food.availabeAddones.length,
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availabeAddones[index];
                        return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text(addon.price.toString()),
                            value: false,
                            onChanged: (value) {});
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
