import 'package:flutter/material.dart';
import 'package:portfolio/navBar/navBarBuilders/navBar_Desktop-Tablet.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
