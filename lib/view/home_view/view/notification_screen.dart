// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/res/common_widget/main_app_bar.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/app_colors/App_Colors.dart';
import '../../../res/common_widget/custom_app_bar.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/custom_style/custom_size.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: MainAppBar(title: 'Notification'),
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    // color: Colors.green,
                    width: width * 0.15,
                    child: Row(
                      children: [
                        // CircleAvatar(radius: 5, backgroundColor: AppColors.darkPink,),
                        // widthBox5,
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Color(0xffE8EFFD),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: AppColors.blackColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  title: CustomText(
                    title: 'Welcome, Your account has been created successfully.',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black33,
                  ),
                  subtitle: CustomText(
                    title: '1 day ago',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black100,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
