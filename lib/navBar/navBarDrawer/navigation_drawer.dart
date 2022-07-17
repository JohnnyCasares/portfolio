import 'package:flutter/material.dart';
import 'package:portfolio/addresses/home/extra_info.dart';
import 'package:portfolio/navBar/navBarDrawer/drawer_item.dart';
import 'package:portfolio/routing/route_names.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DrawerItem(
            title: 'Home',
            navigationPath: HomeRoute,
          ),
          DrawerItem(
            title: 'Projects',
            navigationPath: ProjectsRoute,
          ),
          DrawerItem(
            title: 'Experience',
            navigationPath: ExperienceRoute,
          ),
          Column(
            children: [
              Text(
                'Social Media Links',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Comfortaa',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExtraInfo(
                    title: "GitHub",
                    imageURL: 'lib/assets/images/github.jpg',
                    httpAddress: "https://github.com/JohnnyCasares",
                  ),
                  ExtraInfo(
                      httpAddress:
                          'https://www.linkedin.com/in/johnny-casares7/',
                      title: 'LinkedIn',
                      imageURL: 'lib/assets/images/linkedin.png'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
