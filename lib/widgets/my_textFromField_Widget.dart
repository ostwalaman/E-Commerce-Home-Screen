// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  final String hintText;
  bool obscureText = false;
  MyTextFromField({Key? key, required this.hintText, required this.obscureText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
            fillColor: Colors.grey[100],
            filled: true,
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }
}
