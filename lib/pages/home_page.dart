import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_current_location.dart';
import 'package:flutter_application_1/components/my_drawer.dart';
import 'package:flutter_application_1/components/my_food_tile.dart';
import 'package:flutter_application_1/components/my_sliver_app_bar.dart';
import 'package:flutter_application_1/components/my_tab_bar.dart';
import 'package:flutter_application_1/models/food.dart';
import 'package:flutter_application_1/models/restaurant.dart';
import 'package:flutter_application_1/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: FoodCategory.values.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // get individual food
          final Food food = categoryMenu[index];

          // return food tile UI
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodPage(food: food))),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text('Home'),
      // backgroundColor: Theme.of(context).colorScheme.background,
      // ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: MyDrawer(),

      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  // ignore: sort_child_properties_last
                  title: MyTabBar(tabController: _tabController),
                  // ignore: sort_child_properties_last
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      // current location
                      MyCurrentLocation(),

                      // description box
                      MyCurrentLocation(),
                    ],
                  ),
                ),
              ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu),
            ),
          )),
    );
  }
}
