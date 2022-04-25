// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, empty_constructor_bodies, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:e_commerce/appColors/app_colors.dart';
import 'package:e_commerce/styles/detail_screen_styles.dart';
import 'package:flutter/material.dart';

class DropButton extends StatefulWidget {
  final String hintText;
  String ratingController;
  final List<String> item;
  DropButton(
      {required this.hintText,
      required this.ratingController,
      required this.item});
  @override
  State<DropButton> createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            fillColor: AppColors.baseWhiteColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
          hint: Text(
            "Rs.(widget.hintText)",
            style: DetailScreenStyles.productDropDownStyle,
          ),
          value: widget.ratingController,
          items: widget.item
              .map((e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              widget.ratingController = value!;
            });
          }),
    );
  }
}
