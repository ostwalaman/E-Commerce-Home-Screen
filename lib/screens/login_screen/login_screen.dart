// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/appColors/app_colors.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/screens/homepage/home_page.dart';
import 'package:e_commerce/screens/signup_screen/signup_screen.dart';
import 'package:e_commerce/styles/login_screen_styles.dart';
import 'package:e_commerce/widgets/my_button_Widget.dart';
import 'package:e_commerce/widgets/my_textFromField_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce/svgImages/svg_images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "images/Logo.png",
          height: 150,
        ),
        Column(
          children: [
            MyTextFromField(
              hintText: "E-Mail",
              obscureText: false,
            ),
            MyTextFromField(
              hintText: "Password",
              obscureText: true,
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MyButtonWidget(
                  text: "Sign In",
                  color: AppColors.baseBlackColor,
                  onPress: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo: const HomePage(),
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: MyButtonWidget(
                  text: "Sign Up",
                  color: AppColors.baseDarkPinkColor,
                  onPress: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo: const SignUpScreen(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Forgot Password?",
          style: LoginScreenStyles.forgotPasswordStyles,
        ),
      ],
    );
  }

  Widget buildSocialButton(
      {required Widget child, required VoidCallback onPressed}) {
    return MaterialButton(
      onPressed: onPressed,
      child: child,
      shape: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.baseGrey40Color,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Widget buildBottomPart({required BuildContext context}) {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "or Sign In with Social Accounts",
            style: LoginScreenStyles.signInSocialStyles,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Facebook Social Button
                buildSocialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),

                // Google Social Button
                buildSocialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),

                // Twitter Social Button
                buildSocialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: MaterialButton(
              onPressed: () {
                PageRouting.goToNextPage(
                    context: context, navigateTo: SignUpScreen());
              },
              color: AppColors.baseGrey10Color,
              height: 55,
              elevation: 0,
              shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                child: Text(
                  "Sign Up",
                  style: LoginScreenStyles.signUpButtonTextStyles,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(),
                  buildBottomPart(context: context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
