// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/custom_drop_down_widget.dart';
import 'package:dayf_booking_app/res/common_widget/main_app_bar.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/app_colors/App_Colors.dart';
import '../../../res/common_widget/RoundTextField.dart';
import '../../../res/common_widget/custom_app_bar.dart';
import '../../../res/common_widget/custom_network_image_widget.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/custom_style/custom_size.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final String profileURL ='https://media.istockphoto.com/id/1338134319/photo/portrait-of-young-indian-businesswoman-or-school-teacher-pose-indoors.jpg?s=612x612&w=0&k=20&c=Dw1nKFtnU_Bfm2I3OPQxBmSKe9NtSzux6bHqa9lVZ7A=';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: MainAppBar(title: 'Edit Profile'),
      body: Padding(
        padding: bodyPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(profileURL),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: GestureDetector(
                        child: Container(
                          width: 40,
                          height: 25,
                          decoration: BoxDecoration(
                            color: AppColors.bgColor.withOpacity(0.5),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: AppColors.blackColor,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              // name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightBox20,
                  Text(
                    "Name",
                    style: customLabelStyle2,
                  ),
                  heightBox10,
                  RoundTextField(
                    hint: 'James Tracy',
                    filled: false,
                    isBorder: false,
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ],
              ),

              // name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightBox10,
                  Text(
                    "Email",
                    style: customLabelStyle2,
                  ),
                  heightBox10,
                  RoundTextField(
                    hint: 'example@gmail.com',
                    filled: false,
                    isBorder: false,
                    prefixIcon: Icon(Icons.email_outlined),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),

              // phone number
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact",
                    style: customLabelStyle2,
                  ),
                  heightBox10,
                  RoundTextField(
                    hint: 'Enter your phone number',
                    filled: false,
                    isBorder: false,
                    prefixIcon: Icon(Icons.email_outlined),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),


              // Location
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: "Gander",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteDarker,
                  ),
                  heightBox10,
                  CustomDropDownWidget(
                      selectedValue: 'Male',
                      items: ['Male', 'Female'],
                      onChanged: (value) {},
                      hintText: 'Select Gender'
                  ),
                ],
              ),

              // phone number
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nationality",
                    style: customLabelStyle2,
                  ),
                  heightBox10,
                  RoundTextField(
                    hint: 'Bangladeshi',
                    filled: false,
                    isBorder: false,
                    prefixIcon: Icon(Icons.email_outlined),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),

              SizedBox(height: 20),
              CustomButton(
                title: "Update",
                onTap: () => Get.back(),
              ),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}