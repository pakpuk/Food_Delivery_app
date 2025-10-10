import 'package:food_delivery_app/Model/food_model.dart';

class RestaurantModel {
  final List<FoodModel> menu = [
    FoodModel(
        name: 'burger',
        imagepath: "imagepath",
        price: 4.99,
        discription: "A burger with viandachee",
        availabeAddones: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Extra met', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.99),
        ],
        category: FoodCategories.burgers),
    FoodModel(
        name: 'Double Meal Burger',
        imagepath: "imagepath",
        price: 8.99,
        discription: "A burger with viandachee",
        availabeAddones: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Extra met', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.99),
        ],
        category: FoodCategories.burgers),
    FoodModel(
        name: ' Blue moon burger',
        imagepath: "imagepath",
        price: 4.99,
        discription: "A burger with viandachee",
        availabeAddones: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Extra met', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.99),
        ],
        category: FoodCategories.burgers),
    FoodModel(
        name: 'burger',
        imagepath: "imagepath",
        price: 4.99,
        discription: "A burger with viandachee",
        availabeAddones: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Extra met', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.99),
        ],
        category: FoodCategories.burgers),
  ];
}
