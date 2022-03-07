import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  String title;
  Logo({required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.purple,
            decoration: TextDecoration.none,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w700,
            fontSize: 40,
          ),
        ));
  }
}
