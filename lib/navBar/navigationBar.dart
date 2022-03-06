import 'package:flutter/material.dart';
import 'package:portfolio/navBar/navBarComponents/logo.dart';
import 'package:portfolio/navBar/navBarComponents/navBarItem.dart';

class NavigationBarCustom extends StatelessWidget {
  const NavigationBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //Johnny Casares
          //LOGO
          Logo(
            title: 'Johnny Casares',
          ),

          //Buttons home, experience...
          NavigationBarItem(title: 'Home'),
          NavigationBarItem(title: 'Projects'),
          NavigationBarItem(title: 'Experience'),
        ],
      ),
    );
  }
}
