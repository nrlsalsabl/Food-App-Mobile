// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu

  final List<Food> _menu = [
    //burger
    Food(
      name: "Burger Bangor",
      description: "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
      imagePath: "lib/images/burgers/burger1.jpg",
      price: 15.000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Keju Ekstra", price: 15.000),
        Addon(name: "Tomatoes", price: 2.000),
        Addon(name: "Keju", price: 3000),
      ]
    ),

    Food(
      name: "Burger Bangor",
      description: "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 15.000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Keju Ekstra", price: 15.000),
        Addon(name: "Tomatoes", price: 2.000),
        Addon(name: "Keju", price: 3000),
      ]
    ),

    Food(
      name: "Burger Bangor",
      description: "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 15.000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Keju Ekstra", price: 15.000),
        Addon(name: "Tomatoes", price: 2.000),
        Addon(name: "Keju", price: 3000),
      ]
    ),

    Food(
      name: "Burger Bangor",
      description: "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 15.000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Keju Ekstra", price: 15.000),
        Addon(name: "Tomatoes", price: 2.000),
        Addon(name: "Keju", price: 3000),
      ]
    ),

    Food(
      name: "Burger Bangor",
      description: "Burger bangor dengan topping keju, tomat, selada dan tomat lengkap",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 15.000,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Keju Ekstra", price: 15.000),
        Addon(name: "Tomatoes", price: 2.000),
        Addon(name: "Keju", price: 3000),
      ]
    ),



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
      ]
    ),

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
      ]
    ),

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
      ]
    ),

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
      ]
    ),

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
      ]
    ),


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
      ]
    ),

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
      ]
    ),

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
      ]
    ),

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
      ]
    ),

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
      ]
    ),


    // Pizza
    Food(
      name: "Pizza Macaroni",
      description: "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
      imagePath: "lib/images/pizza/pizza1.jpg",
      price: 60.000,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Cheddar", price: 60.000),
        Addon(name: "Cheese", price: 8.000),
        Addon(name: "Tomato Sauce", price: 4000),
      ]
    ),

    Food(
      name: "Pizza Macaroni",
      description: "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
      imagePath: "lib/images/pizza/pizza2.jpg",
      price: 60.000,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Cheddar", price: 60.000),
        Addon(name: "Cheese", price: 8.000),
        Addon(name: "Tomato Sauce", price: 4000),
      ]
    ),

    Food(
      name: "Pizza Macaroni",
      description: "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
      imagePath: "lib/images/pizza/pizza3.jpg",
      price: 60.000,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Cheddar", price: 60.000),
        Addon(name: "Cheese", price: 8.000),
        Addon(name: "Tomato Sauce", price: 4000),
      ]
    ),

    Food(
      name: "Pizza Macaroni",
      description: "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
      imagePath: "lib/images/pizza/pizza4.jpg",
      price: 60.000,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Cheddar", price: 60.000),
        Addon(name: "Cheese", price: 8.000),
        Addon(name: "Tomato Sauce", price: 4000),
      ]
    ),

    Food(
      name: "Pizza Macaroni",
      description: "Pizza dengan topping lengkap sesuai dengan keinginan yang siap menemani jadwal makan bersama keluarga",
      imagePath: "lib/images/pizza/pizza5.jpg",
      price: 60.000,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Cheddar", price: 60.000),
        Addon(name: "Cheese", price: 8.000),
        Addon(name: "Tomato Sauce", price: 4000),
      ]
    ),


    // Salad
    Food(
      name: "Salad Modern",
      description: "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
      imagePath: "lib/images/salads/salad1.jpg",
      price: 40.000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Salad premium", price: 40.000),
        Addon(name: "Cabbage", price: 8.000),
        Addon(name: "Mayonaise", price: 4000),
      ]
    ),

    Food(
      name: "Salad Modern",
      description: "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
      imagePath: "lib/images/salads/salad2.jpg",
      price: 40.000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Salad premium", price: 40.000),
        Addon(name: "Cabbage", price: 8.000),
        Addon(name: "Mayonaise", price: 4000),
      ]
    ),

    Food(
      name: "Salad Modern",
      description: "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
      imagePath: "lib/images/salads/salad3.jpg",
      price: 40.000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Salad premium", price: 40.000),
        Addon(name: "Cabbage", price: 8.000),
        Addon(name: "Mayonaise", price: 4000),
      ]
    ),

    Food(
      name: "Salad Modern",
      description: "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
      imagePath: "lib/images/salads/salad4.jpg",
      price: 40.000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Salad premium", price: 40.000),
        Addon(name: "Cabbage", price: 8.000),
        Addon(name: "Mayonaise", price: 4000),
      ]
    ),

    Food(
      name: "Salad Modern",
      description: "Salad dengan topping sayuran yang sangat nikmat dan siap santap",
      imagePath: "lib/images/salads/salad5.jpg",
      price: 40.000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Salad premium", price: 40.000),
        Addon(name: "Cabbage", price: 8.000),
        Addon(name: "Mayonaise", price: 4000),
      ]
    ),
  ];


  /* Getters */

  List<Food> get menu => _menu;


  /* Operations */

  // ---- add to cart ----

  // ---- remove from cart ----

  // ---- get total price of cart ----

  // clear cart


  /* Helpers */

  // ---- generate a receipt ----

  // ---- format double value into money ----

  // ---- format list of addons into a string summary ----
  
}