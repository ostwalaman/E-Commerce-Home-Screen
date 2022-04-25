import 'package:e_commerce/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreenStyles {
  // Product Name Screen Style
  static const TextStyle productNameStyle = TextStyle(
    color: AppColors.baseDarkPinkColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  // Product Price Screen Style
  static const TextStyle productPriceStyle = TextStyle(
    color: AppColors.baseGrey60Color,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  // Product Drop Down Value Style
  static const TextStyle productDropDownStyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 12,
  );

  // Add To Cart Style
  static const TextStyle buttonTextStyle = TextStyle(
    color: AppColors.baseWhiteColor,
    fontSize: 20,
  );
}
