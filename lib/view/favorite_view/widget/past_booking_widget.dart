// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/custom_network_image_widget.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:flutter/material.dart';

import '../../../res/app_colors/App_Colors.dart';

class PastBookingWidget extends StatelessWidget {
  const PastBookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      // height: height / 5,
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEDEDF2), width: 1),
          borderRadius: BorderRadius.circular(18)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'Booking ID: 2223211',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          CustomText(
            title: 'Booking Date: April 26, 2023',
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          heightBox10,
          Row(
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
                              "4.9",
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
                            title: "Kuta, Algeria",
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
                                text: "\$80",
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
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: AppColors.p2,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(Icons.bookmark_add, color: Colors.white, size: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),

          heightBox10,
          Row(
            children: [
              Expanded(
                  child: CustomButton(
                    title: 'Write Review',
                    isGradient: false,
                    padding_vertical: 8,
                    buttonColor: Colors.white,
                    borderRadius: 8,
                    titleColor: AppColors.p2,
                    border: Border.all(color: AppColors.p2, width: 1),
                    onTap: () {},
                  )
              ),
              widthBox10,
              Expanded(
                  child: CustomButton(
                    title: 'View Details',
                    padding_vertical: 8,
                    borderRadius: 8,
                    isGradient: false,
                    buttonColor: AppColors.p2,
                    titleColor: Colors.white,
                    onTap: () {},
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
