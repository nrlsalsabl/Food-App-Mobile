import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    // Initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.food.imagePath),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // nama makanan
                      Text(
                        widget.food.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),

                      // harga makanan
                      Text(
                        // ignore: prefer_interpolation_to_compose_strings
                        'Rp' + widget.food.price.toString(),
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      SizedBox(height: 10),

                      // deskripsi makanan
                      Text(
                        widget.food.description,
                      ),

                      SizedBox(height: 10),

                      Divider(color: Theme.of(context).colorScheme.secondary),

                      SizedBox(height: 10),

                      Text(
                        "Add-ons",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      //addons
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: widget.food.availableAddons.length,
                            itemBuilder: (context, index) {
                              //get individual addon
                              Addon addon = widget.food.availableAddons[index];
                              return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text(
                                  // ignore: unnecessary_string_escapes
                                  'Rp${addon.price}',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                                value: widget.selectedAddons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addon] = value!;
                                  });
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                MyButton(text: "Add to cart", onTap: () {}),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
