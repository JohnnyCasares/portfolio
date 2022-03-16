import 'package:flutter/material.dart';
import 'package:portfolio/navBar/navBarComponents/logo.dart';
import 'package:portfolio/navBar/navBarComponents/navBarItem.dart';
import 'package:portfolio/routing/route_names.dart';

class NavigationBarDesktopTablet extends StatelessWidget {
  const NavigationBarDesktopTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //Johnny Casares
          //LOGO
          Logo(
            title: 'Johnny Casares',
          ),

          //Buttons home, experience...
          NavigationBarItem(
            title: 'Home',
            navigationPath: HomeRoute,
          ),
          NavigationBarItem(
            title: 'Projects',
            navigationPath: ProjectsRoute,
          ),
          NavigationBarItem(
            title: 'Experience',
            navigationPath: ExperienceRoute,
          ),
        ],
      ),
    );
  }
}
