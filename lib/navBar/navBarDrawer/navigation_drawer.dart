import 'package:flutter/material.dart';
import 'package:portfolio/addresses/home/extra_info.dart';
import 'package:portfolio/navBar/navBarDrawer/drawer_item.dart';

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
          DrawerItem(title: 'Home'),
          DrawerItem(title: 'Projects'),
          DrawerItem(title: 'Experience'),
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
                    imageURL:
                        'https://media-exp1.licdn.com/dms/image/C4D0BAQFY3BGhoMwEEA/company-logo_200_200/0/1626195279622?e=1654128000&v=beta&t=BUN1lXpxv15CW574NNxFmmoXL381jJ165C9sznptM7w',
                    httpAddress: "https://github.com/JohnnyCasares",
                  ),
                  ExtraInfo(
                      httpAddress:
                          'https://www.linkedin.com/in/johnny-casares7/',
                      title: 'LinkedIn',
                      imageURL:
                          'https://media-exp1.licdn.com/dms/image/C560BAQHaVYd13rRz3A/company-logo_200_200/0/1638831589865?e=1654128000&v=beta&t=zyLzh9MhOYlbVSpSzpdj5TzRMMFY7nClJXB_xtWIx7s'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
