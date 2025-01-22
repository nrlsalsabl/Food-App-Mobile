import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_cart_tile.dart';
import 'package:flutter_application_1/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Are you sure want to delete cart?"),
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel"),
                        ),

                        // yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(child: Text("Cart is Empty ...")))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  // get individual cart items
                                  final cartItem = userCart[index];

                                  // return cart tile UI
                                  return MyCartTile(cartItem: cartItem);
                                }))
                  ],
                ),
              ),

              // button to pay
              MyButton(
                onTap: () {},
                text: "Go to checkout items cart",
              ),

              SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
