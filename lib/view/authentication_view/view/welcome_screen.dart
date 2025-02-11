// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:dayf_booking_app/res/app_images/App_images.dart';
import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:dayf_booking_app/view/authentication_view/view/sign_in_screen.dart';
import 'package:dayf_booking_app/view/authentication_view/view/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/common_widget/custom_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.authBg),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff00000000), Color(0xffE8EFFDE5)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.appLogo, scale: 4,
                  width: width / 1.2,
                ),
                heightBox20,
                CustomText(
                  title: 'Let’s get started!',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white,
                ),
                CustomText(
                  title: 'Login to Stay with you productivity',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),

                heightBox20,
                CustomButton(
                    title: 'Login',
                    onTap: () {
                      Get.to(
                            () => SignInScreen(),
                      );
                    }
                ),
                heightBox10,
                CustomButton(
                    title: 'Sign Up',
                    buttonColor: Colors.white,
                    titleColor: Colors.black,
                    isGradient: false,
                    onTap: () {
                      Get.to(
                            () => SignUpScreen(),
                      );
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
