// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/app_images/App_images.dart';
import 'package:dayf_booking_app/res/common_widget/RoundTextField.dart';
import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/custom_network_image_widget.dart';
import 'package:dayf_booking_app/res/common_widget/custom_row_widget.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:dayf_booking_app/view/home_view/widget/home_card_widget.dart';
import 'package:dayf_booking_app/view/home_view/widget/recommanded_hole_widget.dart';
import 'package:dayf_booking_app/view/home_view/widget/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'notification_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> CatList = ['Nearest', 'Popular', 'Top Rates', 'Trending', 'Featured', 'Latest', 'Newest'];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            /*Row(
              children: [
                Image.asset(
                  AppImages.homeAppLogo,
                  height: height / 12,
                  width: width / 4,
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(
                        ()=> NotificationScreen()
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: AppColors.greyLight, width: 1),
                    ),
                    child: Image.asset(AppImages.notificationIcon, scale: 4,),
                  ),
                )
              ],
            ),

            heightBox20,
            RoundTextField(
              hint: 'Where do you want to stay?',
              isBorder: false,
              filled: false,
              hintColor: AppColors.whiteNormalHover,
              borderRadius: 32,
              focusBorderRadius: 32,
              prefixIcon: Icon(Icons.search_outlined, color: AppColors.whiteNormalHover,),
              suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: CustomButton(
                    title: 'Search',
                    width: 80,
                    fontSize: 10,
                    borderRadius: 32,
                    padding_vertical: 5,
                    onTap: (){}
                ),
              )
            ),

            heightBox10,
            SliderWidget(),

            heightBox20,
            CustomText(
              title: 'Let\'s Find The Best Hotel',
              color: AppColors.blackColor,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              ),

            // Category
            SizedBox(
              height: height / 16,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    CatList.length,
                        (index) {
                      return Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        decoration: BoxDecoration(
                          color: AppColors.p1Light,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: CustomText(
                          title: '${CatList[index]}',
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),*/

            Container(
              height: height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                // border: Border.all(width: 1)
              ),
              child: Stack(
                children: [
                  // Image position
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                      child: Image.asset(
                          AppImages.homeBg,
                          height: height / 3.5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        colorBlendMode: BlendMode.darken,
                        filterQuality: FilterQuality.high,
                        color: Colors.black.withOpacity(0.4),
                      )
                  ),

                  // appbar and text
                  Positioned(
                      top: 32,
                      left: 16,
                      right: 16,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              // IconButton(
                              //   onPressed: (){},
                              //   icon: Icon(Icons.filter_list_outlined, color: Colors.black,),
                              // ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Get.to(
                                          ()=> NotificationScreen()
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.8),
                                    border: Border.all(color: AppColors.greyLight, width: 1),
                                  ),
                                  child: Image.asset(AppImages.notificationIcon, scale: 4,),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Book Your ',
                                    style: GoogleFonts.quicksand(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Dream Stay ',
                                    style: GoogleFonts.quicksand(
                                      color: Color(0xff0EB1FD),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                        letterSpacing: 0
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'in Algeria’s Top Destinations',
                                    style: GoogleFonts.quicksand(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                        letterSpacing: 0
                                    ),
                                  ),
                                ]
                              )
                          )
                        ],
                      )
                  ),
                  // card position
                  Positioned(
                      top: height / 4.5,
                      left: 16,
                      right: 16,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 24,
                              offset: Offset(0, 4),
                            )
                          ]
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.search_outlined, color: Colors.black54,),
                                widthBox10,
                                CustomText(
                                  title: 'Enter Destination',
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )
                              ],
                            ),
                            Divider(height: 8,),

                            heightBox10,
                            Row(
                              children: [
                                Icon(Icons.calendar_month_outlined, color: Colors.black54,),
                                widthBox10,
                                CustomText(
                                  title: 'Fri 10 Jan - Set 11 Jan',
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )
                              ],
                            ),
                            Divider(height: 8,),

                            heightBox10,
                            Row(
                              children: [
                                Icon(Icons.person_outline, color: Colors.black54,),
                                widthBox10,
                                CustomText(
                                  title: '1 room',
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),

                                widthBox10,
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color(0xffD9D9D9),
                                ),
                                widthBox8,
                                CustomText(
                                  title: '2 adults',
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),

                                widthBox10,
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color(0xffD9D9D9),
                                ),
                                widthBox8,
                                CustomText(
                                  title: 'No Child',
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),

                              ],
                            ),
                            Divider(height: 8,),
                            heightBox10,
                            CustomButton(
                                title: 'Search',
                                isGradient: false,
                                buttonColor: Color(0xff287CFF),
                                onTap: (){}
                            ),
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),

            // Recommended Hotels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: CustomRowWidget(
                title: CustomText(
                  title: 'Explore Top Destination',
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                value: CustomText(
                  title: 'See more',
                  color: Color(0xffFC674E),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
            // Home Card
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: height / 3.5,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                          (index) {
                        return Container(
                          margin: EdgeInsets.only(right: 8),
                          child: HomeCardWidget(),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),

            // Recommended Hotels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomRowWidget(
                title: CustomText(
                  title: 'Recommended Hotels',
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                value: CustomText(
                  title: 'See more',
                  color: Color(0xffFC674E),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),

            heightBox8,
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return RecommandedHoleWidget();
                },
              ),
            ),

            heightBox20

          ],
        ),
      ),
    );
  }
}
