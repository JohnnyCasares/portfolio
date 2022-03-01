import 'package:flutter/material.dart';
import 'package:portfolio/navBar/navigationBar.dart';
import 'package:portfolio/template/templatelayout.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //navbar will later be removed most likely
          //navbar cant be loaded everytime a direction is loaded
          NavigationBarCustom(),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 900,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Container for Image
                Container(
                  constraints: const BoxConstraints.expand(
                    width: 300,
                    height: 300,
                  ),
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150.0),
                    ),
                    child: Image.network(
                        'https://media-exp1.licdn.com/dms/image/C4D03AQFLcyKms8N-iw/profile-displayphoto-shrink_800_800/0/1633735666264?e=1651708800&v=beta&t=ms5xyxQy_SLibXRBLDZvgyMT4QIsjJqfWJl1Qgo-B6U',
                        fit: BoxFit.cover),
                  ),
                ),

                //Container for text
                Container(
                  constraints: const BoxConstraints.expand(
                    width: 550,
                    height: 200,
                  ),
                  child: Card(
                    color: Colors.blue[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [Text('biography here')],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
