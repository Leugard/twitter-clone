import 'package:flutter/material.dart';
import 'package:twitter_clone/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Column(
          children: [
            // App logo
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Icon(
                Icons.person,
                size: 72,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            // Divider line
            Divider(
              indent: 25,
              endIndent: 25,
              color: Theme.of(context).colorScheme.secondary,
            ),

            // Home list title
            MyDrawerTile(
              title: 'H O M E',
              icon: Icons.home,
              onTap: () {},
            ),

            // Profile list tile

            // Search list tile

            // Settings list tile
            MyDrawerTile(
              title: 'S E T T I N G S',
              icon: Icons.settings,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
