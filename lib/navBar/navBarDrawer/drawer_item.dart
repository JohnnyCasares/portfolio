import 'package:flutter/material.dart';
import 'package:portfolio/navBar/navBarComponents/navBarItem.dart';

//NavigationDrawerItem is a class that is gonna serve as a template for any option
//that needs to be added to the side menu (drawer)
class DrawerItem extends StatelessWidget {
  final String title;

  final String navigationPath;
  const DrawerItem({required this.title, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Icon(icon),
          NavigationBarItem(
            title: title,
            navigationPath: navigationPath,
          ),
        ],
      ),
    );
  }
}
