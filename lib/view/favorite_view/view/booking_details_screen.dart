// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/common_widget/main_app_bar.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:flutter/material.dart';

import '../../../res/common_widget/custom_button.dart';
import '../../../res/common_widget/custom_network_image_widget.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/custom_style/custom_size.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: MainAppBar(title: 'Booking Details'),
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffEDEDF2), width: 1),
                  borderRadius: BorderRadius.circular(18)
              ),
              child: Row(
                children: [
                  CustomNetworkImage(
                    imageUrl: 'https://images.leadconnectorhq.com/image/f_webp/q_80/r_1200/u_https://assets.cdn.filesafe.space/bdU4aTTwhHvvoXr9bg8P/media/624582cc2d3a6e78bcb8b4bc.png',
                    height: height / 8,
                    width: width / 3,
                    borderRadius: BorderRadius.circular(18),
                  ),

                  widthBox10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              title: 'Grand Palace',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 18),
                                SizedBox(width: 4),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        heightBox5,
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.grey, size: 16),
                            SizedBox(width: 4),
                            CustomText(
                                title: 'Kuta, Algeria',
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400
                            ),
                          ],
                        ),
                        heightBox5,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\$105",
                                    style: TextStyle(
                                      color: Color(0xffFC674E),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "/Night",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            heightBox20,
            CustomText(title: "Schedule", fontSize: 24, fontWeight: FontWeight.w600,),
            heightBox10,
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1
                    )
                  ]
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            title: 'Check-In',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),
                        heightBox10,
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(28),
                                  // border: Border.all(color: Color(0xffEDEDF2), width: 1)
                                ),
                                child: CustomText(
                                    title: 'Tue,23 June 2024',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  widthBox10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            title: 'Check-Out',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),
                        heightBox10,
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(28),
                                  // border: Border.all(color: Color(0xffEDEDF2), width: 1)
                                ),
                                child: CustomText(
                                    title: 'Sat,29 June 2024',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            heightBox20,
            CustomText(title: 'Room Options', fontSize: 24, fontWeight: FontWeight.w600,),
            heightBox10,
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1
                    )
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: 'Your Selected Room',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff8B939F),
                  ),

                  heightBox10,
                  CustomButton(
                    title: '',
                    onTap: null,
                    isGradient: false,
                    buttonColor: Color(0xffF7F9FA),
                    borderRadius: 14,
                    widget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        children: [
                          CustomText(
                            title: 'Double',
                            fontSize: 16,
                            color: AppColors.whiteDarkActive,
                          ),

                          Spacer(),


                        ],
                      ),
                    ),
                  ),

                  heightBox10,
                  CustomButton(
                    title: '',
                    onTap: null,
                    isGradient: false,
                    buttonColor: Color(0xffFFE9F2),
                    borderRadius: 14,
                    widget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        children: [
                          CustomText(
                            title: 'Total Price:',
                            fontSize: 16,
                            color: AppColors.whiteDark,
                          ),

                          Spacer(),

                          CustomText(
                            title: '\$560',
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color: AppColors.p3,
                          )

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
