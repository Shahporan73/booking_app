// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/common_widget/csutom_border_color.dart';
import 'package:dayf_booking_app/res/common_widget/custom_network_image_widget.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:flutter/material.dart';

class FilterResultCardWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  final String rating;
  final String location;
  final String price;
  final String time;
  FilterResultCardWidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.rating,
    required this.location,
    required this.price,
    required this.time
  });

  @override
  Widget build(BuildContext context) {
    var height =  MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned.fill(
            child: CustomBorderColor(
              borderWidth: 1,
              radius: 20,
              gradientColors: [
                Color(0xffC5B9FF),
                Color(0xffFEBAD6),
              ],
                child: Container(
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.1),
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                            child: CustomNetworkImage(
                              imageUrl: imagePath,
                              width: double.infinity,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber, size: 18),
                                  SizedBox(width: 4),
                                  Text(
                                    rating,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: title,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.grey, size: 16),
                                SizedBox(width: 4),
                                CustomText(
                                    title: location,
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400
                                ),
                                Spacer(),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: price,
                                        style: TextStyle(
                                          color: AppColors.p2,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "/$time",
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
                )
            )
        ),
        Positioned(
            top: height  * 0.16,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.p2,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.bookmark_add, color: Colors.white, size: 24),
            ),
        )
      ],
    );
  }
}
