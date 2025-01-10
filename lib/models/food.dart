// shop item
class Food{
  final String name;            // caramel pizza
  final String description;     // a pizza with caramel
  final String imagePath;       // lib/images/pizza
  final double price;           // rp 15.000
  final FoodCategory category;  // [ extra topping, sauce, special ]
  
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//kategori
enum FoodCategory {
  salads,
  burgers,
  pizza,
  dessert,
  drinks,
}


//shop addons

class Addon{
  final String name;
  final double price;

  Addon({
    required this.name,
    required this.price,
  });
}