// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/common_widget/RoundTextField.dart';
import 'package:dayf_booking_app/res/common_widget/csutom_border_color.dart';
import 'package:dayf_booking_app/res/common_widget/custom_app_bar.dart';
import 'package:dayf_booking_app/res/common_widget/custom_otp_widget.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:dayf_booking_app/view/authentication_view/controller/sign_in_controller.dart';
import 'package:dayf_booking_app/view/authentication_view/controller/sign_up_controller.dart';
import 'package:dayf_booking_app/view/authentication_view/view/reset_password_screen.dart';
import 'package:dayf_booking_app/view/authentication_view/view/sign_up_screen.dart';
import 'package:dayf_booking_app/view/authentication_view/widget/email_box_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/app_images/App_images.dart';
import '../../../res/common_widget/country_code_picker.dart';
import '../../../res/common_widget/custom_button.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/custom_style/custom_size.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // background
          Positioned.fill(
            child: Container(
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
              ),
            ),
          ),

          // appbar
          Positioned(
              top: height * 0.05,
              left: 16,
              right: 16,
              child: CustomAppBar(
                appBarName: 'Email verification',
              )
          ),
          // appLogo
          Positioned(
              top: height * 0.12,
              left: 100,
              right: 100,
              child: Image.asset(
                AppImages.appLogo,
              )
          ),

          // body
          Positioned(
            top: height * 0.25,
            left: 16,
            right: 16,
            // bottom: height * 0.03,
            child: CustomBorderColor(
              radius: 25,
              child: ClipRRect(
                borderRadius:BorderRadius.circular(25),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 17, sigmaY: 29),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: CustomText(
                                title: 'Get OTP from your mail',
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),

                            heightBox10,
                            Center(
                              child: CustomText(
                                title: 'Code has been send to abc@gmail.com',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            heightBox20,
                            CustomOtpWidget(pinColor: Colors.white,),

                            // Timeout section
                            heightBox20,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  title: "Resend code in ",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                                CustomText(
                                  title: "53",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: AppColors.primaryColor,
                                ),
                                CustomText(
                                  title:  " s",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            heightBox20,
                            CustomButton(
                                title: 'Verify',
                                onTap: (){
                                  Get.to(()=> ResetPasswordScreen());
                                }
                            ),
                            heightBox10,

                          ]
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
