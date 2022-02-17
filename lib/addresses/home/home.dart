import 'package:flutter/material.dart';
import 'package:portfolio/navBar/navigationBar.dart';
import 'package:portfolio/template/templatelayout.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //navbar will later be removed most likely
        //navbar cant be loaded everytime a direction is loaded
        NavigationBarCustom(),
        SizedBox(
          height: 20,
        ),
        Text('body xd')
      ],
    );
  }
}
