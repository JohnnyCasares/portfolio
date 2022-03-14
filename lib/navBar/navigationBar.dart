import 'package:flutter/material.dart';
import 'package:portfolio/navBar/navBarBuilders/navBar_Desktop-Tablet.dart';
import 'package:portfolio/navBar/navBarBuilders/navBar_Mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarCustom extends StatelessWidget {
  const NavigationBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: NavigationBarDesktopTablet(),
      mobile: NavigationBarMobile(),
    );
  }
}
