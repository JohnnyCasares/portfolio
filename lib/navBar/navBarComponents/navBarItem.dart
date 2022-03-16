import 'package:flutter/material.dart';
import 'package:portfolio/services/navigation_services.dart';

import '../../locator.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;

  final String navigationPath;
  //add another variable for constructor
  //this new one will most likely be a widget
  //reason: onPressed function needs a direction

  NavigationBarItem({required this.title, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: TextButton(
            onPressed: () {
              locator<NavigationService>().navigateTo(navigationPath);
            },
            child: Text(title)));
  }
}
