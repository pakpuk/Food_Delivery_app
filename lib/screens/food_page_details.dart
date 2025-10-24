import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food_model.dart';
import 'package:food_delivery_app/Model/restaurant_model.dart';
import 'package:food_delivery_app/widgets/m_button.dart';
import 'package:provider/provider.dart';

class FoodPageDetails extends StatefulWidget {
  final FoodModel food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPageDetails({
    super.key,
    required this.food,
  }) {
    for (Addon addon in food.availabeAddones) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPageDetails> createState() => _FoodPageDetailsState();
}

class _FoodPageDetailsState extends State<FoodPageDetails> {
  void addToCart(FoodModel food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availabeAddones) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<RestaurantModel>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(widget.food.imagepath),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.food.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$${widget.food.price}',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.food.discription,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Add-ons",
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: widget.food.availabeAddones.length,
                              itemBuilder: (context, index) {
                                Addon addon =
                                    widget.food.availabeAddones[index];
                                return CheckboxListTile(
                                    title: Text(addon.name),
                                    subtitle: Text(
                                      '\$${addon.price}',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    value: widget.selectedAddons[addon],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        widget.selectedAddons[addon] = value!;
                                      });
                                    });
                              }),
                        ),
                        MyButtonWidget(
                            title: 'Add To Carte',
                            ontap: () =>
                                addToCart(widget.food, widget.selectedAddons),
                            borderRadius: 12,
                            padding: EdgeInsets.all(20))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle),
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios)),
          ),
        )
      ],
    );
  }
}
