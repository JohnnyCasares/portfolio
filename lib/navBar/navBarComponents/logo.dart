import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Text(
          'Johnny Casares',
          style: TextStyle(
            color: Colors.purple,
            decoration: TextDecoration.none,
            fontFamily: 'Comfortaa',
            // fontWeight: FontWeight.w700
          ),
        ));
  }
}
