// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart_item.dart';
import 'package:flutter_application_1/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu

  final List<Food> _menu = [
    //burger
    Food(
        name: "Burger Bangor",
        description:
            "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
        imagePath: "lib/images/burgers/burger1.jpg",
        price: 15.000,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Keju Ekstra", price: 15.000),
          Addon(name: "Tomatoes", price: 2.000),
          Addon(name: "Keju", price: 3000),
        ]),

    Food(
        name: "Burger Bangor",
        description:
            "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
        imagePath: "lib/images/burgers/burger2.jpg",
        price: 15.000,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Keju Ekstra", price: 15.000),
          Addon(name: "Tomatoes", price: 2.000),
          Addon(name: "Keju", price: 3000),
        ]),

    Food(
        name: "Burger Bangor",
        description:
            "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
        imagePath: "lib/images/burgers/burger3.jpg",
        price: 15.000,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Keju Ekstra", price: 15.000),
          Addon(name: "Tomatoes", price: 2.000),
          Addon(name: "Keju", price: 3000),
        ]),

    Food(
        name: "Burger Bangor",
        description:
            "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
        imagePath: "lib/images/burgers/burger4.jpg",
        price: 15.000,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Keju Ekstra", price: 15.000),
          Addon(name: "Tomatoes", price: 2.000),
          Addon(name: "Keju", price: 3000),
        ]),

    Food(
        name: "Burger Bangor",
        description:
            "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
        imagePath: "lib/images/burgers/burger5.jpg",
        price: 15.000,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Keju Ekstra", price: 15.000),
          Addon(name: "Tomatoes", price: 2.000),
          Addon(name: "Keju", price: 3000),
        ]),

    // Dessert
    Food(
        name: "Chocolate Cake",
        description: "Dessert dengan saus coklat untuk pelengkap makanan anda",
        imagePath: "lib/images/dessert/dessert1.jpg",
        price: 15.000,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: "Dessert Chocolate", price: 35.000),
          Addon(name: "Topping oreo", price: 4.000),
          Addon(name: "Coconut", price: 5000),
        ]),

    Food(
        name: "Chocolate Cake",
        description: "Dessert dengan saus coklat untuk pelengkap makanan anda",
        imagePath: "lib/images/dessert/dessert2.jpg",
        price: 15.000,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: "Dessert Chocolate", price: 35.000),
          Addon(name: "Topping oreo", price: 4.000),
          Addon(name: "Coconut", price: 5000),
        ]),

    Food(
        name: "Chocolate Cake",
        description: "Dessert dengan saus coklat untuk pelengkap makanan anda",
        imagePath: "lib/images/dessert/dessert3.jpg",
        price: 15.000,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: "Dessert Chocolate", price: 35.000),
          Addon(name: "Topping oreo", price: 4.000),
          Addon(name: "Coconut", price: 5000),
        ]),

    Food(
        name: "Chocolate Cake",
        description: "Dessert dengan saus coklat untuk pelengkap makanan anda",
        imagePath: "lib/images/dessert/dessert4.jpg",
        price: 15.000,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: "Dessert Chocolate", price: 35.000),
          Addon(name: "Topping oreo", price: 4.000),
          Addon(name: "Coconut", price: 5000),
        ]),

    Food(
        name: "Chocolate Cake",
        description: "Dessert dengan saus coklat untuk pelengkap makanan anda",
        imagePath: "lib/images/dessert/dessert5.jpg",
        price: 15.000,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: "Dessert Chocolate", price: 35.000),
          Addon(name: "Topping oreo", price: 4.000),
          Addon(name: "Coconut", price: 5000),
        ]),

    // Drinks
    Food(
        name: "Milshake Chocolate",
        description: "Minuman segar penghilang dahaga yang menggugah selera",
        imagePath: "lib/images/drinks/drinks1.jpg",
        price: 15.000,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milshake Chocolate", price: 40.000),
          Addon(name: "Topping Oreo", price: 3.000),
          Addon(name: "Milk", price: 5000),
        ]),

    Food(
        name: "Milshake Chocolate",
        description: "Minuman segar penghilang dahaga yang menggugah selera",
        imagePath: "lib/images/drinks/drinks2.jpg",
        price: 15.000,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milshake Chocolate", price: 40.000),
          Addon(name: "Topping Oreo", price: 3.000),
          Addon(name: "Milk", price: 5000),
        ]),

    Food(
        name: "Milshake Oreo",
        description: "Minuman segar penghilang dahaga yang menggugah selera",
        imagePath: "lib/images/drinks/drinks3.jpg",
        price: 15.000,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milshake Chocolate", price: 40.000),
          Addon(name: "Topping Oreo", price: 3.000),
          Addon(name: "Milk", price: 5000),
        ]),

    Food(
        name: "Milshake Chocolate",
        description: "Minuman segar penghilang dahaga yang menggugah selera",
        imagePath: "lib/images/drinks/drinks4.jpg",
        price: 15.000,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milshake Chocolate", price: 40.000),
          Addon(name: "Topping Oreo", price: 3.000),
          Addon(name: "Milk", price: 5000),
        ]),

    Food(
        name: "Milshake Chocolate",
        description: "Minuman segar penghilang dahaga yang menggugah selera",
        imagePath: "lib/images/drinks/drinks5.jpg",
        price: 15.000,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milshake Chocolate", price: 40.000),
          Addon(name: "Topping Oreo", price: 3.000),
          Addon(name: "Milk", price: 5000),
        ]),

    // Pizza
    Food(
        name: "Pizza Macaroni",
        description:
            "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
        imagePath: "lib/images/pizza/pizza1.jpg",
        price: 60.000,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Cheddar", price: 60.000),
          Addon(name: "Cheese", price: 8.000),
          Addon(name: "Tomato Sauce", price: 4000),
        ]),

    Food(
        name: "Pizza Macaroni",
        description:
            "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
        imagePath: "lib/images/pizza/pizza2.jpg",
        price: 60.000,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Cheddar", price: 60.000),
          Addon(name: "Cheese", price: 8.000),
          Addon(name: "Tomato Sauce", price: 4000),
        ]),

    Food(
        name: "Pizza Macaroni",
        description:
            "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
        imagePath: "lib/images/pizza/pizza3.jpg",
        price: 60.000,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Cheddar", price: 60.000),
          Addon(name: "Cheese", price: 8.000),
          Addon(name: "Tomato Sauce", price: 4000),
        ]),

    Food(
        name: "Pizza Macaroni",
        description:
            "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
        imagePath: "lib/images/pizza/pizza4.jpg",
        price: 60.000,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Cheddar", price: 60.000),
          Addon(name: "Cheese", price: 8.000),
          Addon(name: "Tomato Sauce", price: 4000),
        ]),

    Food(
        name: "Pizza Macaroni",
        description:
            "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
        imagePath: "lib/images/pizza/pizza5.jpg",
        price: 60.000,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Cheddar", price: 60.000),
          Addon(name: "Cheese", price: 8.000),
          Addon(name: "Tomato Sauce", price: 4000),
        ]),

    // Salad
    Food(
        name: "Salad Modern",
        description:
            "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
        imagePath: "lib/images/salads/salad1.jpg",
        price: 40.000,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Salad premium", price: 40.000),
          Addon(name: "Cabbage", price: 8.000),
          Addon(name: "Mayonaise", price: 4000),
        ]),

    Food(
        name: "Salad Modern",
        description:
            "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
        imagePath: "lib/images/salads/salad2.jpg",
        price: 40.000,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Salad premium", price: 40.000),
          Addon(name: "Cabbage", price: 8.000),
          Addon(name: "Mayonaise", price: 4000),
        ]),

    Food(
        name: "Salad Modern",
        description:
            "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
        imagePath: "lib/images/salads/salad3.jpg",
        price: 40.000,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Salad premium", price: 40.000),
          Addon(name: "Cabbage", price: 8.000),
          Addon(name: "Mayonaise", price: 4000),
        ]),

    Food(
        name: "Salad Modern",
        description:
            "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
        imagePath: "lib/images/salads/salad4.jpg",
        price: 40.000,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Salad premium", price: 40.000),
          Addon(name: "Cabbage", price: 8.000),
          Addon(name: "Mayonaise", price: 4000),
        ]),

    Food(
        name: "Salad Modern",
        description:
            "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
        imagePath: "lib/images/salads/salad5.jpg",
        price: 40.000,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Salad premium", price: 40.000),
          Addon(name: "Cabbage", price: 8.000),
          Addon(name: "Mayonaise", price: 4000),
        ]),
  ];

  /* Getters */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /* Operations */

  //user cart
  final List<CartItem> _cart = [];

  // ---- add to cart ----
  void addCart(Food food, List<Addon> selectedAddons) {
    // lihat apakah item sudah di pilih dengan makanan
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // lihat apakah item sama
      bool isSameFood = item.food == food;

      // lihat apakah list yang dipilih sama
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // jika item sudah ada, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // jika item belum ada, add it to cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  // ---- remove from cart ----
  void removeCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  // ---- get total price of cart ----
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // ---- get total number of item in cart ----
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /* Helpers */

  // ---- generate a receipt ----
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    //format data to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("_______________");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatMoney(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }

      receipt.writeln();
    }
    receipt.writeln("_______________");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatMoney(getTotalPrice())}");

    return receipt.toString();
  }

  // ---- format double value into money ----
  // ignore: unused_element
  String _formatMoney(double price) {
    return "Rp. ${price.toStringAsFixed(2)}";
  }

  // ---- format list of addons into a string summary ----
  // ignore: unused_element
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatMoney(addon.price)})")
        .join(", ");
  }
}
