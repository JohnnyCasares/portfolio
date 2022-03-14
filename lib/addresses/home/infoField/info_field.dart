import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/addresses/home/infoField/info_field_desktop-tablet.dart';
import 'package:portfolio/addresses/home/infoField/info_field_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

//This class goes inside of home and it is used for placing a picture to the left
//and text to the right. The color is for the backgorund of the text.
//It is gonna be used for biography and education

class InfoField extends StatelessWidget {
  String description;
  String imageURL;
  Color color;

  InfoField(
      {required this.description, required this.imageURL, required this.color});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: InfoFieldMobile(
          description: description, imageURL: imageURL, color: color),
      desktop: InfoFieldDesktopTablet(
          description: description, imageURL: imageURL, color: color),
    );
  }
}
