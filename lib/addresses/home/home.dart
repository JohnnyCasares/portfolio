import 'package:flutter/material.dart';

import 'package:portfolio/addresses/home/extra_info.dart';
import 'package:portfolio/addresses/home/infoField/info_field.dart';
import 'package:portfolio/navBar/navBarBuilders/navBar_Desktop-Tablet.dart';
import 'package:portfolio/navBar/navigationBar.dart';
import 'package:portfolio/template/templatelayout.dart';
import 'package:portfolio/template/text_form.dart';
import 'package:validators/validators.dart' as validator;

class Home extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              imageURL:
                  'https://media-exp1.licdn.com/dms/image/C4D03AQFLcyKms8N-iw/profile-displayphoto-shrink_800_800/0/1633735666264?e=1651708800&v=beta&t=ms5xyxQy_SLibXRBLDZvgyMT4QIsjJqfWJl1Qgo-B6U',
              color: Colors.lightBlueAccent),
          InfoField(
              description:
                  'Bachelor of Science in Computer Science                   2020-2024 \n•Florida International University (FIU), Miami, FL\n•Relevant Coursework: Logic for CS, Discrete Structures, Data Structures, Internet of Things, Computer Architecture, Software Engineering, Statistics, Calculus II',
              imageURL:
                  'https://media-exp1.licdn.com/dms/image/C560BAQEVMx6tBKgu4g/company-logo_200_200/0/1607460696992?e=1654128000&v=beta&t=FiYnmGj2v52FStr6fgcpjlg-4YYESehLBL_K6pLjc74',
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
                    imageURL:
                        'https://media-exp1.licdn.com/dms/image/C4E0BAQE5ZCa0KH8TaQ/company-logo_200_200/0/1630068453170?e=1654732800&v=beta&t=hbjXRfhf_xIJ0eugfFH2wtDUwG5rq16quyjI4-kp3R4',
                  ),
                  ExtraInfo(
                      httpAddress: "https://upe.cs.fiu.edu",
                      title: 'UPE',
                      imageURL:
                          'https://media-exp1.licdn.com/dms/image/C4D0BAQFV7Iw_00bcSw/company-logo_200_200/0/1641511802317?e=1654128000&v=beta&t=pqv4hMCqbF1HbjHSK1ik7_ML6ADUDk7KU1VUw77amsc'),
                  ExtraInfo(
                      httpAddress: "https://shpe.fiu.edu",
                      title: 'SHPE',
                      imageURL:
                          'https://media-exp1.licdn.com/dms/image/C4E0BAQH9C4XcWwWGhQ/company-logo_200_200/0/1581188449571?e=1654128000&v=beta&t=2JNLx2cCzDBIQYSOngf41I1ZrHuX-IBtIVNuH2aw8PA'),
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
                    imageURL:
                        'https://media-exp1.licdn.com/dms/image/C4D0BAQFY3BGhoMwEEA/company-logo_200_200/0/1626195279622?e=1654128000&v=beta&t=BUN1lXpxv15CW574NNxFmmoXL381jJ165C9sznptM7w',
                    httpAddress: "https://github.com/JohnnyCasares",
                  ),
                  ExtraInfo(
                      httpAddress:
                          'https://www.linkedin.com/in/johnny-casares7/',
                      title: 'LinkedIn',
                      imageURL:
                          'https://media-exp1.licdn.com/dms/image/C560BAQHaVYd13rRz3A/company-logo_200_200/0/1638831589865?e=1654128000&v=beta&t=zyLzh9MhOYlbVSpSzpdj5TzRMMFY7nClJXB_xtWIx7s'),
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
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
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
    );
  }
}
