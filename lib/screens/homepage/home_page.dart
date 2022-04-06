// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, avoid_unnecessary_containers, unnecessary_string_escapes

import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce/appColors/app_colors.dart';
import 'package:e_commerce/data/home_page_data.dart';
import 'package:e_commerce/styles/home_screen_styles.dart';
import 'package:e_commerce/svgImages/svg_images.dart';
import 'package:e_commerce/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/show_all_widget.dart';

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

  Widget buildAdvertisementPlace() {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: SizedBox(
        height: 170,
        child: Carousel(
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(microseconds: 1000),
          showIndicator: false,
          images: [
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://blog.creatopy.com/wp-content/uploads/2019/03/creative-advertising-and-pop-culture-pop-culture-ads.png",
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://blog.creatopy.com/wp-content/uploads/2018/05/advertisement-ideas-inspiration-advertising.png",
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFreshProducts(
      {required String productImage,
      required String productName,
      required double productPrice}) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 30,
        right: 20,
        bottom: 20,
      ),
      height: 65,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide.none,
              ),
              child: Image.network(productImage),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: HomeScreenStyles.freshProductsNameStyle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: MaterialButton(
              color: AppColors.baseLightPinkColor,
              elevation: 0,
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.7),
                side: BorderSide.none,
              ),
              onPressed: () {},
              child: Text(
                "\Rs. $productPrice",
                style: HomeScreenStyles.freshProductsPriceStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                buildAdvertisementPlace(),
                ShowAllWidget(
                  leftText: 'Fresh Veggies',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: singleProductData.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      var data = singleProductData[index];
                      return SingleProductWidget(
                        onPressed: () {},
                        productImage: data.productImage,
                        // productModel: data.productModel,
                        productName: data.productName,
                        // productOldPrice: data.productOldPrice,
                        productPrice: data.productPrice,
                      );
                    },
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                ShowAllWidget(
                  leftText: 'Fresh',
                ),
                buildFreshProducts(
                  productImage:
                      "http://bigbasket.com/media/uploads/p/l/10000085-2_1-fresho-chinese-cabbage.jpg",
                  productName: 'Cabbage',
                  productPrice: 70,
                ),
                buildFreshProducts(
                  productImage:
                      "https://bigbasket.com/media/uploads/p/l/10000066_25-fresho-cabbage.jpg",
                  productName: 'Cabbage',
                  productPrice: 70,
                ),
              ],
            ),

            // Center(child: Text("All Types of Vegetables")),
            Center(child: Text("All Time Vegetables")),
            Center(child: Text("Exotic Vegetables")),
            Center(child: Text("Seasonal Vegetables")),
          ],
        ),
      ),
    );
  }
}
