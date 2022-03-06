import 'package:flutter/material.dart';

import 'package:portfolio/addresses/home/extra_info.dart';
import 'package:portfolio/addresses/home/info_field.dart';
import 'package:portfolio/navBar/navigationBar.dart';
import 'package:portfolio/template/templatelayout.dart';
import 'package:portfolio/template/text_form.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //navbar will later be removed most likely
              //navbar cant be loaded everytime a direction is loaded
              NavigationBarCustom(),

              //ABOUT ME
              Text(
                'About Me',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                ),
              ),

              InfoField(
                  description:
                      "'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'",
                  imageURL:
                      'https://media-exp1.licdn.com/dms/image/C4D03AQFLcyKms8N-iw/profile-displayphoto-shrink_800_800/0/1633735666264?e=1651708800&v=beta&t=ms5xyxQy_SLibXRBLDZvgyMT4QIsjJqfWJl1Qgo-B6U',
                  color: Colors.lightBlueAccent),
              InfoField(
                  description: 'Education',
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
                        title: "GDSC",
                        imageURL:
                            'https://media-exp1.licdn.com/dms/image/C4E0BAQE5ZCa0KH8TaQ/company-logo_200_200/0/1630068453170?e=1654732800&v=beta&t=hbjXRfhf_xIJ0eugfFH2wtDUwG5rq16quyjI4-kp3R4',
                      ),
                      ExtraInfo(
                          title: 'UPE',
                          imageURL:
                              'https://media-exp1.licdn.com/dms/image/C4D0BAQFV7Iw_00bcSw/company-logo_200_200/0/1641511802317?e=1654128000&v=beta&t=pqv4hMCqbF1HbjHSK1ik7_ML6ADUDk7KU1VUw77amsc'),
                      ExtraInfo(
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
                      ),
                      ExtraInfo(
                          title: 'LinkedIn',
                          imageURL:
                              'https://media-exp1.licdn.com/dms/image/C560BAQHaVYd13rRz3A/company-logo_200_200/0/1638831589865?e=1654128000&v=beta&t=zyLzh9MhOYlbVSpSzpdj5TzRMMFY7nClJXB_xtWIx7s'),
                    ],
                  ),
                ],
              ),

              //Add contact form

              // SizedBox(
              //   height: 30,
              // ),

              Column(
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
                  TextFormCustom(hint: 'Name'),
                  TextFormCustom(hint: "Email"),
                  TextFormCustom(hint: 'Subject'),
                  TextFormCustom(
                    hint: 'Message',
                    number_of_lines: 7,
                  )
                ],
              ),
              //submit button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: MaterialButton(
                  onPressed: () {},
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
      ),
    );
  }
}
