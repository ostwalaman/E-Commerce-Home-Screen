// ignore_for_file: prefer_const_constructors, file_names

import 'package:e_commerce/data/home_page_data.dart';
import 'package:e_commerce/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';

class VeggiesData extends StatelessWidget {
  const VeggiesData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: veggiesData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        var data = veggiesData[index];
        return SingleProductWidget(
          onPressed: () {},
          productImage: data.productImage,
          // productModel: data.productModel,
          productName: data.productName,
          // productOldPrice: data.productOldPrice,
          productPrice: data.productPrice,
        );
      },
    );
  }
}
