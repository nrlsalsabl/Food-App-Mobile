import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_current_location.dart';
import 'package:flutter_application_1/components/my_drawer.dart';
import 'package:flutter_application_1/components/my_sliver_app_bar.dart';
import 'package:flutter_application_1/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  //tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text('Home'),
      // backgroundColor: Theme.of(context).colorScheme.background,
      // ),
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
        body: TabBarView(
          controller: _tabController,
          children: [
            
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("first tab items"),
            ),
            
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("second tab items"),
            ),

            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("third tab items"),
            ),
          ],
        )
        ),
    );
  }
}