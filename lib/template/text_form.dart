import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormCustom extends StatelessWidget {
  String hint;
  int? number_of_lines;
  //if email true then
  bool? isEmail;
  String? Function(String?)? validator;

  TextFormCustom(
      {required this.hint, this.number_of_lines, this.isEmail, this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
      child: TextFormField(
        maxLines: number_of_lines ?? 1,
        validator: validator,

        //This was a problematic part since I wanted the keyboard type email to be nullable
        //so in the constructor is not necessary to place a value for
        //as default isEmail should be false, and if false allow for multiline, if true
        //then text can only be an email
        keyboardType: isEmail ?? false
            ? TextInputType.emailAddress
            : TextInputType.multiline,
        decoration: InputDecoration(
          filled: true,
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
