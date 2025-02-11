// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/app_images/App_images.dart';
import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:dayf_booking_app/view/onboarding_view/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final PageController pageController = PageController();
  final List<String> images = [AppImages.splashOne,AppImages.splashOne,AppImages.onBoardingOne,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
          padding: bodyPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                height: 400,
                // width: MediaQuery.of(context).size.width * 0.5,
                child: PageView.builder(
                  itemCount: 3,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return Container(
                      child: OnboardingCard(image: images[index]),
                    );
                  },
                ),
              ),
              
              heightBox20,
              CustomButton(
                  title: '',
                  padding_vertical: 5,
                  widget: Row(
                    children: [
                      widthBox40,
                      CustomText(
                        title: "Lets See",
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: Colors.white,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_forward, color: Colors.purple),
                      ),
                      widthBox20,
                    ],
                  ),
                  onTap: () {
                    Get.to(
                      () => OnBoardingScreen(),
                    );
                  }
              ),

            ],
          ),
      ),
    );
  }
}

class OnboardingCard extends StatelessWidget {
  final String image;
  OnboardingCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          scale: 4,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            AppImages.appLogo,
            fit: BoxFit.contain,
            height: height * 0.15,
            width: width * 0.60,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Discover Your ideal Stay for ",
                        style: GoogleFonts.urbanist(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "Every ",
                        style: GoogleFonts.urbanist(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.p3,
                        ),
                      ),
                      TextSpan(
                        text: "Journey",
                        style: GoogleFonts.urbanist(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.p5,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomText(
                    title: "Choose from multiple of top hotels and resorts for an unforgettable experience",
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}