import 'package:flutter/material.dart';

class InfoFieldMobile extends StatelessWidget {
  String description;
  String imageURL;
  Color color;
  InfoFieldMobile(
      {required this.description, required this.imageURL, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Container(
        width: 900,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Container for Image
            Container(
              constraints: const BoxConstraints.expand(
                width: 200,
                height: 200,
              ),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Image.asset(imageURL, fit: BoxFit.cover),
              ),
            ),

            //Container for text
            Container(
              constraints: BoxConstraints.tightFor(),
              child: Card(
                color: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          description,
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
