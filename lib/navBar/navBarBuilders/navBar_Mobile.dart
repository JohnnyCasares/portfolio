import 'package:flutter/material.dart';
import 'package:portfolio/navBar/navBarComponents/logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Logo(title: "Johnny Casares"),
          IconButton(
              onPressed: () {
                //This is very important.
                //The function below allows user to tap on menu icon and
                //open the Drawer
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.menu)),
        ],
      ),
    );
  }
}
