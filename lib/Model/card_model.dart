import 'package:food_delivery_app/Model/food_model.dart';

class CardModel {
  final FoodModel food;
  final List<Addon> selectedAddons;
  final int quantiy;

  CardModel({
    required this.food,
    required this.selectedAddons,
    this.quantiy = 1,
  });
  double get totalPrice {
    double addonsprice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsprice) * quantiy;
  }
}
