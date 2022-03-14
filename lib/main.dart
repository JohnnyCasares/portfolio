import 'package:flutter/material.dart';
import 'package:portfolio/addresses/experience/experience.dart';
import 'package:portfolio/addresses/projects/projects.dart';
import 'package:portfolio/template/templatelayout.dart';

import 'addresses/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: TemplateLayout(),
    );
  }
}
