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
}
