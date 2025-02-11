// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/custom_dotted_widget.dart';
import 'package:dayf_booking_app/res/common_widget/custom_drop_down_widget.dart';
import 'package:dayf_booking_app/res/common_widget/custom_network_image_widget.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/res/common_widget/main_app_bar.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:image_picker/image_picker.dart';

class BookingNowScreen extends StatelessWidget {
  const BookingNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: MainAppBar(title: 'Booking Now'),
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomText(
                title: 'Order Details',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            heightBox5,
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
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: CustomNetworkImage(
                        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpOuuR_e-1gpmVOs2vQu-Xb1UTcY7sFX4DuQ&s',
                        height: height / 10,
                        width: width / 4,
                    ),
                  ),
                  widthBox10,
                  Column(
                    children: [
                      CustomText(
                          title: 'Ronald Richards',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                      ),
                      CustomText(
                          title: 'ronald@gmail.com',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkHover
                      ),

                    ],
                  )
                ],
              ),
            ),

            heightBox20,
            // Hotel Details card
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
                children: [
                  Row(
                    children: [
                      CustomText(
                        title: 'Blue Nature',
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
                                color: AppColors.p3,
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
                      RatingBarIndicator(
                          itemBuilder: (context, index) {
                            return Icon(Icons.star, color: Colors.amber, size: 18,);
                          },
                          itemCount: 5,
                          itemSize: 18,
                          rating: 4.9,
                          direction: Axis.horizontal,
                          unratedColor: Colors.amber.withAlpha(50),
                          itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                      ),
                      CustomText(
                        title: '4.9',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                    ],
                  ),

                ],
              ),
            ),


            // Schedule
            heightBox20,
            CustomText(
              title: 'Schedule',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            heightBox5,
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
            Text(
              'Upload Identity',
              style: customLabelStyle2,
            ),
            heightBox5,

            CustomDottedWidget(
              containerHeight: height / 6,
              dottedColor: Color(0xffCACACA),
              centerWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.cloud_upload_outlined, size: 50,color: Color(0xffCACACA),),
                  CustomText(
                      title: 'Upload',
                    fontWeight: FontWeight.w500,
                    color: Color(0xffCACACA),
                  ),
                ],
              ),
              onTap: () => ImagePicker(),
            ),

            // Schedule
            heightBox20,
            CustomText(
              title: 'Room options',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),

            heightBox5,
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
                      title: 'Number of guest',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff8B939F),
                  ),
                  heightBox8,
                  CustomDropDownWidget(
                      selectedValue: '2',
                      items: ['2','3','4','5'],
                      onChanged: (value) {

                      },
                      hintText: '2',
                    decoration: BoxDecoration(
                      color: Color(0xffF7F9FA),
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),

                  heightBox10,
                  CustomText(
                    title: 'Select your room',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff8B939F),
                  ),
                  heightBox8,
                  CustomDropDownWidget(
                    selectedValue: 'double',
                    items: ['double','doubled','doubleds','doublec'],
                    onChanged: (value) {

                    },
                    hintText: 'double',
                    decoration: BoxDecoration(
                        color: Color(0xffF7F9FA),
                        borderRadius: BorderRadius.circular(8)
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

            heightBox20,
            CustomButton(
                title: 'Pay Now',
                onTap: (){}
            ),

            heightBox50,
          ],
        ),
      ),
    );
  }
}
