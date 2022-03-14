import 'package:flutter/material.dart';
import 'package:portfolio/addresses/home/home.dart';
import 'package:portfolio/navBar/navBarBuilders/navBar_Desktop-Tablet.dart';
import 'package:portfolio/navBar/navBarDrawer/navigation_drawer.dart';
import 'package:portfolio/navBar/navigationBar.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) =>
          Scaffold(
        endDrawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavigationBarCustom(),
              Home(),
            ],
          ),
        ),
      ),
    );
  }
}
