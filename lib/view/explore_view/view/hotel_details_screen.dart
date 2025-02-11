// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/app_images/App_images.dart';
import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/main_app_bar.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:dayf_booking_app/view/explore_view/controller/hotel_details_controller.dart';
import 'package:dayf_booking_app/view/explore_view/view/booking_now_screeen.dart';
import 'package:dayf_booking_app/view/explore_view/widget/details_widget/description_widget.dart';
import 'package:dayf_booking_app/view/explore_view/widget/details_widget/facility_widget.dart';
import 'package:dayf_booking_app/view/explore_view/widget/details_widget/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/common_widget/custom_network_image_widget.dart';
import '../../../res/common_widget/custom_text.dart';

class HotelDetailsScreen extends StatelessWidget {
  HotelDetailsScreen({super.key});

  final HotelDetailsController controller = Get.put(HotelDetailsController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: MainAppBar(title: 'Details'),
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          children: [

            // Image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CustomNetworkImage(
                    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_9uoSgjuK9K2J-1A9LcOJ6qxJoIQv3ek9QeI2OCPyjGiVQT-u',
                    width: double.infinity,
                    height: height / 3,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.bookmark_add, color: AppColors.p2, size: 24),
                  ),
                ),
              ],
            ),

            heightBox20,
            // Title
            Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      title: 'Blue Nature',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                    ),
                    widthBox10,
                    Icon(Icons.star, color: Colors.amber, size: 24,),
                    CustomText(
                      title: '4.9',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                    ),
                    Spacer(),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "\$80",
                            style: TextStyle(
                              color: AppColors.p2,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: "/night",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
                heightBox10,

                Row(
                  children: [
                    Icon(Icons.location_on, color: AppColors.p3, size: 24,),
                    CustomText(
                      title: 'South Kuta',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor,
                    ),
                    Spacer(),

                    CustomButton(
                        title: '',
                        width: width / 2.8,
                        borderRadius: 4,
                        isGradient: false,
                        buttonColor: AppColors.p1,
                        padding_vertical: 5,
                        widget: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              title: 'Message',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteColor,
                            ),
                            widthBox5,
                            Image.asset(AppImages.messageInactive, scale: 4.5,)
                          ],
                        ),
                        onTap: () {},
                    ),

                  ],
                ),

              ],
            ),

            heightBox20,
            Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width * double.infinity,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColors.darkHover),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                              padding_vertical: 8,
                              fontSize: 14,
                              title: 'Descriptions',
                              isGradient: false,
                              buttonColor:
                              controller.isSelected.value ==
                                  'Descriptions'
                                  ? AppColors.p3
                                  : Colors.transparent,
                              titleColor:
                              controller.isSelected.value ==
                                  'Descriptions'
                                  ? AppColors.whiteColor
                                  : AppColors.blackColor,
                              onTap: () {
                                controller.updateSelectedButton('Descriptions');
                              }),
                        ),
                        widthBox10,
                        Expanded(
                          child: CustomButton(
                              padding_vertical: 8,
                              fontSize: 14,
                              title: 'Facility',
                              isGradient: false,
                              buttonColor:controller.isSelected.value ==
                                  'Facility'
                                  ? AppColors.p3
                                  : Colors.transparent,
                              titleColor: controller.isSelected.value ==
                                  'Facility'
                                  ? AppColors.whiteColor
                                  : AppColors.blackColor,
                              onTap: () {
                                controller.updateSelectedButton('Facility');
                              }),
                        ),
                        widthBox10,
                        Expanded(
                          child: CustomButton(
                              padding_vertical: 8,
                              fontSize: 14,
                              title: 'Review',
                              isGradient: false,
                              buttonColor:controller.isSelected.value ==
                                  'Review'
                                  ? AppColors.p3
                                  : Colors.transparent,
                              titleColor: controller.isSelected.value ==
                                  'Review'
                                  ? AppColors.whiteColor
                                  : AppColors.blackColor,
                              onTap: () {
                                controller.updateSelectedButton('Review');
                              }),
                        ),
                      ],
                    ),
                  ),


                  heightBox20,
                  controller.isSelected.value == 'Descriptions'
                      ? DescriptionWidget(
                    description: 'Enjoy your favorite dish and a lovely time with your friends and family and have a great time. '
                        'Food from local food trucks will be available for purchase. '
                        'There will also be live music and fun activities for all ages to enjoy.'
                        'Enjoy your favorite dish and a lovely time with your friends and family and have a great time. '
                        'Food from local food trucks will be available for purchase. '
                        'There will also be live music and fun activities for all ages to enjoy.',
                  )
                   : controller.isSelected.value == 'Facility' ?
                  FacilityWidget(
                  ) :
                  ReviewWidget(),

                ],
              ),
            ),

            heightBox50,

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: height * 0.06,
        color: Colors.transparent,
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: CustomButton(
          padding_vertical: 8,
          fontSize: 14,
          title: 'Book Now',
          isGradient: true,
          buttonColor: AppColors.p3,
          titleColor: AppColors.whiteColor,
          onTap: () {
            Get.to(
                () => BookingNowScreen(),
                transition: Transition.downToUp,
                duration: Duration(milliseconds: 100),
            );
          },
        ),
      ),
    );
  }
}
