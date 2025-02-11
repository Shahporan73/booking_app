// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:dayf_booking_app/view/authentication_view/view/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../res/app_images/App_images.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final PageController pageController = PageController();

  final List<String> images = [
    AppImages.onBoardingOne,
    AppImages.onBoardingTwo,
    AppImages.onBoardingThree
  ];
  final List<String> titles = [
    'Explore you\nFavourite Journey',
    'Discover and reserve your perfect hotel',
    'Find you perfect\nstay anywhere'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: PageView.builder(
              itemCount: 3,
              controller: pageController,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images[index]),
                          scale: 4,
                          fit: BoxFit.cover
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff00000000), Color(0xffB8CDF9)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 60, left: 32, right: 32, bottom: 32),
                        child: Column(
                          children: [

                            Spacer(),
                            CustomText(
                                title: titles[index],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 26,
                                textAlign: TextAlign.center
                            ),
                            180.heightBox,
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
          )
          ),
          // skip button
          Positioned(
            top: 60,
              right: 32,
              child: GestureDetector(
                onTap: () {
                  Get.to(
                        () => WelcomeScreen(),
                  );
                },
                child: CustomText(
                  title: 'Skip',
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              )
          ),

          // smooth page indicator, next button
          Positioned(
              bottom: 60,
              right: 32,
              left: 32,
              child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: JumpingDotEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 6,
                      activeDotColor: Colors.white,
                      dotColor: Colors.white.withOpacity(0.4),
                    ),
                  ),
                  heightBox30,
                  CustomButton(
                      title: 'Next',
                      onTap: (){
                        if(pageController.page == 2){
                          Get.to(
                            () => WelcomeScreen(),
                          );
                        }else{
                          pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn
                          );
                        }
                      }
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
