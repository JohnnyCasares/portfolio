import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/addresses/experience/experience.dart';
import 'package:portfolio/addresses/projects/projects.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/template/templatelayout.dart';
import 'firebase_options.dart';
import 'addresses/home/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Johnny Casares Portfolio',
      home: TemplateLayout(),
    );
  }
}
