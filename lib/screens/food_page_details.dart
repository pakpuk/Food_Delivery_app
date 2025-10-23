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
