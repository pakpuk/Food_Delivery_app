class FoodModel {
  final String name;
  final String imagepath;
  final double price;
  final String discription;
  final FoodCategories category;
  final List<Addon> availabeAddones;

  FoodModel(
      {required this.name,
      required this.imagepath,
      required this.price,
      required this.discription,
      required this.availabeAddones,
      required this.category});
}

enum FoodCategories {
  burgers,
  salads,
  sides,
  drinks,
  desserts,
  length,
}

class Addon {
  String name;
  double price;
  Addon({required this.name, required this.price});
}
