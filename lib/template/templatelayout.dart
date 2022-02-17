import 'package:flutter/material.dart';
import 'package:portfolio/navBar/navigationBar.dart';

//for now this template is useless. it will have a better use later
//CHECK LINES 10-14 FOR MEANINGFULL COMMENTS
class TemplateLayout extends StatelessWidget {
  const TemplateLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return navigation bar
    //and body
    //make a constructor so this widget can be used in any of the directions: home, etc
    //might have to review tutorial. NavBar should not be loaded everytime we change tabs
    //content/body changes, app bar should not
    return Container(
      child: Column(
        children: [
          //navbar
          SizedBox(
            height: 20,
          ),
          NavigationBarCustom(),
        ],
      ),
    );
  }
}
