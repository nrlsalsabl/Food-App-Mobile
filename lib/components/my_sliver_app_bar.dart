import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';

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
            // pergi ke halaman cart
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartPage()));
          },
        ),
        // IconButton(
        //   icon: Icon(Icons.more_vert),
        //   onPressed: () {
        //     // Handle more button press
        //   },
        // ),
      ],
      // ignore: deprecated_member_use
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
