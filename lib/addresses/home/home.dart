import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:portfolio/addresses/home/extra_info.dart';
import 'package:portfolio/addresses/home/infoField/info_field.dart';
import 'package:portfolio/navBar/navBarBuilders/navBar_Desktop-Tablet.dart';
import 'package:portfolio/navBar/navigationBar.dart';
import 'package:portfolio/template/templatelayout.dart';
import 'package:portfolio/template/text_form.dart';
import 'package:validators/validators.dart' as validator;

class Home extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _subject = TextEditingController();
  final TextEditingController _message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //navbar will later be removed most likely
            //navbar cant be loaded everytime a direction is loaded

            // NavigationBarCustom(),

            //ABOUT ME
            Text(
              'About Me',
              style: TextStyle(
                fontFamily: 'Comfortaa',
              ),
            ),

            InfoField(
                description:
                    "I am Johnny Casares and welcome to my portfolio.\nI come from Venezuela and I have been in America since 2016. Currently I am pursuing a degree in Computer Science and I am thinking of pursuing a second major in the Internet of Things. Some of my current projects involve learning more about:\nHardware, Web and App Development, Linux essentials.\nSome of the tools I have used up to this point are:\nJava, Dart(Flutter), Linux Mint, Python    ",
                imageURL: 'lib/assets/images/JohnnyCasares.png',
                color: Colors.lightBlueAccent),
            InfoField(
                description:
                    'Bachelor of Science in Computer Science                   2020-2024 \n•Florida International University (FIU), Miami, FL\n•Relevant Coursework: Logic for CS, Discrete Structures, Data Structures, Internet of Things, Computer Architecture, Software Engineering, Statistics, Calculus II',
                imageURL: 'lib/assets/images/FIU.png',
                color: Colors.lightGreenAccent),

            //AFFILIATIONS
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Affiliations',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ExtraInfo(
                      httpAddress:
                          "https://gdsc.community.dev/florida-international-university/",
                      title: "GDSC",
                      imageURL: 'lib/assets/images/GDSC.png',
                    ),
                    ExtraInfo(
                        httpAddress: "https://upe.cs.fiu.edu",
                        title: 'UPE',
                        imageURL: 'lib/assets/images/UPE.jpg'),
                    ExtraInfo(
                        httpAddress: "https://shpe.fiu.edu",
                        title: 'SHPE',
                        imageURL: 'lib/assets/images/SHPE.jpg'),
                  ],
                ),
              ],
            ),

            //SOCIAL MEDIA LINKS

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
                      imageURL: 'lib/assets/images/github.jpg',
                      httpAddress: "https://github.com/JohnnyCasares",
                    ),
                    ExtraInfo(
                        httpAddress:
                            'https://www.linkedin.com/in/johnny-casares7/',
                        title: 'LinkedIn',
                        imageURL: 'lib/assets/images/linkedin.png'),
                  ],
                ),
              ],
            ),

            //Add contact form

            Form(
              key: _formKey,
              child: Column(
                //mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Contact Form',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Comfortaa'),
                  ),
                  Text(
                    'I am available for opportunities in freelancing, collaborations, and internships',
                    style: TextStyle(fontFamily: "Comfortaa"),
                  ),
                  TextFormCustom(
                    controller: _name,
                    hint: 'Name',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter a name";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormCustom(
                    controller: _email,
                    hint: "Email",
                    isEmail: true,
                    validator: (value) {
                      if (!validator.isEmail(value!)) {
                        return "Enter a valid Email";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormCustom(
                    controller: _subject,
                    hint: 'Subject',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter a subject";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormCustom(
                    controller: _message,
                    hint: 'Message',
                    number_of_lines: 7,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter a message";
                      } else {
                        return null;
                      }
                    },
                  ),
                  //submit button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    child: MaterialButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          String message;
                          try {
                            final collection = FirebaseFirestore.instance
                                .collection("contactForm");

                            await collection.doc().set({
                              'timesStamp': FieldValue.serverTimestamp(),
                              'name': _name.text,
                              'subject': _subject.text,
                              'email': _email.text,
                              'message': _message.text
                            });
                            message = 'Sent';
                            _name.clear();
                            _email.clear();
                            _subject.clear();
                            _message.clear();
                          } catch (_) {
                            message = 'Error when sending';
                          }
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(message)));
                        }
                      },
                      color: Colors.black87,
                      height: 60,
                      minWidth: double.infinity,
                      child: Text('SUBMIT',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
