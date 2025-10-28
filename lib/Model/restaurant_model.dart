import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/card_model.dart';
import 'package:food_delivery_app/Model/food_model.dart';
import 'package:intl/intl.dart';

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

  List<CardModel> get carditem => _cart;

  final List<CardModel> _cart = [];

  void addToCart(FoodModel food, List<Addon> selectedAddons) {
    CardModel? cardIteme = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    if (cardIteme != null) {
      cardIteme.quantity++;
    } else {
      _cart.add(CardModel(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  void removeFromCard(CardModel cardItem) {
    int cartIndex = _cart.indexOf(cardItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CardModel cardItem in _cart) {
      double itemTotal = cardItem.food.price;
      for (Addon addon in cardItem.selectedAddons) {
        itemTotal += itemTotal;
      }
      total += itemTotal * cardItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CardModel cardItem in _cart) {
      totalItemCount += cardItem.quantity;
    }
    return totalItemCount;
  }

  void cleaCart() {
    _cart.clear();
    notifyListeners();
  }

  String _formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }

  String displayCartRecipt{
    final recipt =StringBuffer();
     recipt.writeln('Here is  your recipt.');
     recipt.writeln();

     String formatDate=DateFormat('yyyy-mm-dd HH:mm:ss') .format(DateTime.now());
     recipt.writeln();
     recipt.writeln();
     recipt.writeln('--------');

     for(final cartitem in _cart){
      recipt.writeln('${cartitem.quantity}*${cartitem.food.name}-${_formatPrice(cartitem.food.price)}');
     if(cartitem.selectedAddons.isNotEmpty){
      recipt.writeln('Add_ons: ${_formatAddons(cartitem.selectedAddons)}');

     }
     recipt.writeln();
     }
  }
}
