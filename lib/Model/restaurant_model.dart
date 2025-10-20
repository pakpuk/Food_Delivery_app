import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food_model.dart';

class RestaurantModel extends ChangeNotifier {
  final List<FoodModel> menu = [
    FoodModel(
        name: 'burger',
        imagepath: "imagepath",
        price: 4.99,
        discription: "A  delicious burger with meal ",
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
        discription: "A burger with  double  viandachee",
        availabeAddones: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Extra met', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.99),
        ],
        category: FoodCategories.burgers),
    FoodModel(
        name: ' Blue moon burger',
        imagepath: "imagepath",
        price: 9.99,
        discription: "A burger with viandachee",
        availabeAddones: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Extra met', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.99),
        ],
        category: FoodCategories.burgers),
    FoodModel(
        name: ' Cheees burger',
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
        name: 'Salade',
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
        name: 'drink',
        imagepath: "imagepath",
        price: 1.99,
        discription: "A burger with viandachee",
        availabeAddones: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Extra met', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.99),
        ],
        category: FoodCategories.burgers),
    FoodModel(
        name: 'Donuts',
        imagepath: "imagepath",
        price: 1.99,
        discription: "A burger with viandachee",
        availabeAddones: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Extra met', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.99),
        ],
        category: FoodCategories.burgers),
    FoodModel(
        name: 'Macarron',
        imagepath: "imagepath",
        price: 1.22,
        discription: "A burger with viandachee",
        availabeAddones: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Extra met', price: 1.99),
          Addon(name: 'Extra Sauce', price: 0.99),
        ],
        category: FoodCategories.burgers),
  ];

  List<FoodModel> get menuList => menu;
}
