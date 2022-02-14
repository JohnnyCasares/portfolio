import 'package:flutter/material.dart';

class TemplateLayout extends StatelessWidget {
  const TemplateLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return navigation bar
    //and body
    //make a constructor so this widget can be used in any of the directions: home, etc
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //navbar
          //later we create a different file and import the widget
          SizedBox(
            height: 20,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Johnny Casares
              Expanded(
                  flex: 4,
                  child: Text(
                    'Johnny Casares',
                    style: TextStyle(
                        color: Colors.purple, decoration: TextDecoration.none),
                  )),

              //Buttons home, experience...
              Expanded(
                  flex: 1,
                  child: TextButton(onPressed: () {}, child: Text('Home'))),
              Expanded(
                  flex: 1,
                  child: TextButton(onPressed: () {}, child: Text('Projects'))),
              Expanded(
                  flex: 1,
                  child:
                      TextButton(onPressed: () {}, child: Text('Experience'))),
            ],
          )
        ],
      ),
    );
  }
}
