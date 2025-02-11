// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/common_widget/RoundTextField.dart';
import 'package:dayf_booking_app/res/common_widget/csutom_border_color.dart';
import 'package:dayf_booking_app/res/common_widget/custom_app_bar.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:dayf_booking_app/view/authentication_view/controller/sign_in_controller.dart';
import 'package:dayf_booking_app/view/authentication_view/controller/sign_up_controller.dart';
import 'package:dayf_booking_app/view/authentication_view/view/sign_up_screen.dart';
import 'package:dayf_booking_app/view/home_view/view/home_dashboard.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/app_images/App_images.dart';
import '../../../res/common_widget/country_code_picker.dart';
import '../../../res/common_widget/custom_button.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/custom_style/custom_size.dart';
import 'forgot_password_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [

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
                appBarName: 'Login Account',
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
            bottom: height * 0.03,
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
                                title: 'Login',
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),

                            heightBox10,
                            Center(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Don’t have an account? ',
                                          style: GoogleFonts.urbanist(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Colors.white
                                          )
                                      ),
                                      TextSpan(
                                          text: 'Sign Up',
                                          style: GoogleFonts.urbanist(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                              color: AppColors.p3
                                          ),
                                          recognizer: TapGestureRecognizer()..onTap = (){
                                            Get.to(
                                                  () => SignUpScreen(),
                                            );
                                          }
                                      ),
                                    ]
                                ),
                              ),
                            ),


                            heightBox20,
                            Text(
                              'Email',
                              style: customLabelStyle,
                            ),
                            heightBox5,
                            RoundTextField(
                              hint: 'example@gmail.com',
                              prefixIcon: Icon(Icons.email_outlined, color: AppColors.whiteDark,),
                            ),

                            heightBox10,
                            Text(
                              'Password',
                              style: customLabelStyle,
                            ),
                            heightBox5,
                            Obx(() => RoundTextField(
                              hint: '************',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  controller.isPasswordVisible.value ? Icons.remove_red_eye : Icons.visibility_off,
                                  color: AppColors.whiteDark,
                                ),
                                onPressed: () {
                                  controller.togglePasswordVisibility();
                                },
                              ),
                              obscureText: !controller.isPasswordVisible.value,
                            ),
                            ),

                            // remember me
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Obx(() => Checkbox(
                                    activeColor: AppColors.primaryColor,
                                    value: controller.isChecked.value,
                                    onChanged: (value) {
                                      controller.isChecked.value = value!;
                                    },
                                  ),),
                                  CustomText(
                                    title: "Remember me",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.black33,
                                  ),
                                ],),

                                GestureDetector(
                                  onTap: () {
                                    Get.to(
                                          ()=>ForgotPasswordScreen(),
                                      transition: Transition.rightToLeft,
                                      duration: Duration(milliseconds: 100),
                                    );
                                  },
                                  child: CustomText(
                                    title: "Forgot Password?",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.p4,
                                  ),
                                )
                              ],
                            ),



                            heightBox20,
                            CustomButton(
                                title: 'Sign In',
                                onTap: (){
                                  Get.to(
                                        () => HomeDashboard(),
                                  );
                                }
                            ),
                            heightBox10,
                            Center(
                              child: CustomText(title: 'Or', fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.whiteDarkActive,),
                            ),
                            heightBox10,

                            CustomButton(
                                title: '',
                                isGradient: false,
                                buttonColor: Colors.white,
                                titleColor: Colors.black,
                                widget: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(AppImages.googleLogo, scale: 4,),
                                    widthBox10,
                                    CustomText(title: 'Continue with Google',
                                      fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black,)
                                  ],
                                ),
                                onTap: (){}
                            ),
                            heightBox10,
                            CustomButton(
                                title: '',
                                isGradient: false,
                                buttonColor: Colors.white,
                                titleColor: Colors.black,
                                widget: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(AppImages.facebookLogo, scale: 4,),
                                    widthBox10,
                                    CustomText(title: 'Continue with Facebook',
                                      fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black,)
                                  ],
                                ),
                                onTap: (){}
                            ),

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
