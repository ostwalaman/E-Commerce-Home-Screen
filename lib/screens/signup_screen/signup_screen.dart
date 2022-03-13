import 'package:e_commerce/appColors/app_colors.dart';
import 'package:e_commerce/styles/signup_screen_style.dart';
import 'package:e_commerce/svgImages/svg_images.dart';
import 'package:e_commerce/widgets/my_button_Widget.dart';
import 'package:e_commerce/widgets/my_textFromField_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "images/Logo.png",
          height: 150,
        ),
        MyTextFromField(hintText: "Full Name", obscureText: false),
        MyTextFromField(hintText: "E-Mail", obscureText: false),
        MyTextFromField(hintText: "Password", obscureText: true),
        MyTextFromField(hintText: "Confirm Password", obscureText: true),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: MyButtonWidget(
            onPress: () {},
            color: AppColors.baseDarkPinkColor,
            text: "Create an Account",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: const TextSpan(
            text: "By Signing up, you Agree to our \n\t",
            style: SignUpScreenStyle.signInAgreeStyle,
            children: <TextSpan>[
              TextSpan(
                text: "Terms",
                style: SignUpScreenStyle.termsTextStyle,
              ),
              TextSpan(
                text: " and\t",
                style: SignUpScreenStyle.andTextStyle,
              ),
              TextSpan(
                text: "Conditions of Use.",
                style: SignUpScreenStyle.conditionsTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildSocialButton(
      {required Widget child, required VoidCallback onPressed}) {
    return MaterialButton(
      shape: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.baseGrey40Color,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
      onPressed: onPressed,
    );
  }

  Widget buildBottomPart() {
    return SizedBox(
      height: 225,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "or Sign in With Social Accounts",
            style: SignUpScreenStyle.signInSocialStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // FaceBook Social Button
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
            margin: const EdgeInsets.all(20),
            child: MaterialButton(
              onPressed: () {},
              color: AppColors.baseGrey10Color,
              height: 55,
              elevation: 0,
              child: const Center(
                child: Text(
                  "Sign Up",
                  style: SignUpScreenStyle.signUpButtonTextStyle,
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            buildTopPart(),
            buildBottomPart(),
          ],
        ),
      ),
    );
  }
}
