import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child; 
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child, 
    required this.title,
    });

    @override
    Widget build(BuildContext context) {
      return SliverAppBar(
        expandedHeight: 330,
        collapsedHeight: 130,
        floating: false,
        pinned: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle search button press
            },
          ),
          // IconButton(
          //   icon: Icon(Icons.more_vert),
          //   onPressed: () {
          //     // Handle more button press
          //   },
          // ),
        ],
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sunset Dinner"),
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: child,
          ),
          title: title,
          centerTitle: true,
          titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
          expandedTitleScale: 1,
        ),
      );
    }
}