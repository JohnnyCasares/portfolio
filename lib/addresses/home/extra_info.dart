import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//This class will be used to show my affiliations with images
//UPE, GDSC, SHPE
//and then also for my social media links (use images)

class ExtraInfo extends StatelessWidget {
  String imageURL;
  String title;
  String httpAddress;

  ExtraInfo(
      {required this.imageURL, required this.title, required this.httpAddress});

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
              icon: Image.asset(imageURL, fit: BoxFit.cover),
              iconSize: 60,
              onPressed: _launchUrl,
            ),
          ),
        ],
      ),
    );
  }

  _launchUrl() async {
    String url = httpAddress;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not reach address";
    }
  }
}
