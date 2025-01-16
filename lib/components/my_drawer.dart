import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_drawer_tile.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Drawer(backgroundColor: Theme.of(context).colorScheme.background,
    child: Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 100.0),
        child: Icon(Icons.lock_clock_rounded,
        size: 100,
        color: Theme.of(context).colorScheme.inversePrimary,
        ),
        ),

        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),

        MyDrawerTile(
          text: "H O M E", 
          icon: Icons.home, 
          onTap: () { 
            Navigator.pop(context);
          },
          ),


          MyDrawerTile(
          text: "SETTINGS", 
          icon: Icons.settings, 
          onTap: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage(),
            ));
          },
          ),

          const Spacer(),

          MyDrawerTile(
          text: "LOGOUT", 
          icon: Icons.logout, 
          onTap: () {},
          ),

          const SizedBox(height: 25),
      ],
    ),
    );
  }
}