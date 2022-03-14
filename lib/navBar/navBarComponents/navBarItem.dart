import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;

  final String? navigationPath;
  //add another variable for constructor
  //this new one will most likely be a widget
  //reason: onPressed function needs a direction

  NavigationBarItem({required this.title, this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1, child: TextButton(onPressed: () {}, child: Text(title)));
  }
}
