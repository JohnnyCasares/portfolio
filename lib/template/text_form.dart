import 'package:flutter/material.dart';

class TextFormCustom extends StatelessWidget {
  String hint;
  int? number_of_lines;

  TextFormCustom({required this.hint, this.number_of_lines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: TextField(
        maxLines: number_of_lines ?? 1,
        decoration: InputDecoration(
          filled: true,
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
