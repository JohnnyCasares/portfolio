import 'package:flutter/material.dart';

//This class will be used to show my affiliations with images
//UPE, GDSC, SHPE
//and then also for my social media links (use images)

class ExtraInfo extends StatelessWidget {
  String imageURL;
  String title;
  ExtraInfo({required this.imageURL, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: IconButton(
            icon: Image.network(imageURL, fit: BoxFit.cover),
            iconSize: 60,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
