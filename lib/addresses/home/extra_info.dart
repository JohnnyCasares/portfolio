import 'package:flutter/material.dart';

//This class will be used to show my affiliations with images
//UPE, GDSC, SHPE
//and then also for my social media links (use images)

class ExtraInfo extends StatelessWidget {
  String imageURL;
  String title;
  String? httpAddress;
  ExtraInfo({required this.imageURL, required this.title, this.httpAddress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 10, 8, 50),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Comfortaa',
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: IconButton(
              icon: Image.network(imageURL, fit: BoxFit.cover),
              iconSize: 60,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
