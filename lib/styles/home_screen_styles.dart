// ignore_for_file: unnecessary_import

import 'package:e_commerce/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenStyles {
  //App Bar Upper Title - Home Screen Style
  static const TextStyle appBarUpperTitleStyles = TextStyle(
    color: AppColors.baseBlackColor,
    fontWeight: FontWeight.bold,
  );

  //App Bar Bottom Title - Home Screen Style
  static const TextStyle appBarBottomTitleStyles = TextStyle(
    color: Colors.grey,
    fontSize: 13,
  );

  // Bottom Bar Style - Home Screen Style
  static const TextStyle freshProductsNameStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.baseDarkPinkColor,
  );

  // Bottom Bar Style - Price Style
  static const TextStyle freshProductsPriceStyle = TextStyle(
    fontSize: 18,
    color: AppColors.baseWhiteColor,
  );
}
