import 'package:e_commerce/appColors/app_colors.dart';
import 'package:e_commerce/styles/home_screen_styles.dart';
import 'package:e_commerce/svgImages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  AppBar buildAppBar() {
    return AppBar(
      bottom: const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text("All"),
          Text("Veggies"),
          Text("Exotic Veggies"),
          Text("Seasonal Veggies"),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: const [
          Text(
            "Welcome",
            style: HomeScreenStyles.appBarUpperTitleStyles,
          ),
          Text(
            "Shopping",
            style: HomeScreenStyles.appBarBottomTitleStyles,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 30,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 30,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: const TabBarView(
          children: [
            Center(child: Text("All Types of Vegetables")),
            Center(child: Text("All Time Vegetables")),
            Center(child: Text("Exotic Vegetables")),
            Center(child: Text("Seasonal Vegetables")),
          ],
        ),
      ),
    );
  }
}
