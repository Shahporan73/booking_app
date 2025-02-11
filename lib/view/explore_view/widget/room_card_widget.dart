// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:flutter/material.dart';

class RoomCardWidget extends StatelessWidget {
  final List<Map<String, dynamic>> facilities;
  final String title;
  RoomCardWidget({super.key, required this.facilities, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.p2, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              title: title,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.p3
          ),
          heightBox5,
          Row(
            children: [
              CustomText(
                  title: '2 single beds',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor
              ),
              widthBox5,
              Icon(Icons.bed_outlined, color: AppColors.blackColor, size: 18,),
              widthBox5,
              Icon(Icons.bed_outlined, color: AppColors.blackColor, size: 18,)
            ],
          ),

          heightBox5,

          heightBox10,
          Wrap(
            spacing: 5, // Adjusted horizontal spacing
            runSpacing: 0, // Adjusted vertical spacing
            alignment: WrapAlignment.start,
            children: facilities.map((facility) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDF2), width: 1),
                    ),
                    child: Icon(facility['icon'], size: 18, color: Colors.grey),
                  ),
                  SizedBox(width: 5), // Reduced spacing for alignment
                  CustomText(
                      title: facility['title'],
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),
                ],
              );
            }).toList(),
          ),


          heightBox20,
          CustomButton(
              title: 'Show Prices',
              buttonColor: Colors.white,
              titleColor: AppColors.p2,
              isGradient: false,
              border: Border.all(color: AppColors.p2, width: 1),
              onTap: () {},
          ),

        ],
      ),
    );
  }
}
