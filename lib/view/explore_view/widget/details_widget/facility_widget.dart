// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/custom_drop_down_widget.dart';
import 'package:dayf_booking_app/res/common_widget/custom_network_image_widget.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/view/explore_view/widget/explore_area_map_widget.dart';
import 'package:dayf_booking_app/view/explore_view/widget/explore_area_widget.dart';
import 'package:dayf_booking_app/view/explore_view/widget/room_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../res/app_images/App_images.dart';
import '../../../../res/common_widget/custom_row_widget.dart';
import '../../../../res/custom_style/custom_size.dart';
import '../../../home_view/widget/home_card_widget.dart';
import '../../view/hotel_details_screen.dart';

class FacilityWidget extends StatelessWidget {
  FacilityWidget({super.key});


  List<Map<String, dynamic>> facilities = [
    {'icon': Icons.wifi, 'title': 'Wifi'},
    {'icon': Icons.restaurant, 'title': 'Dining'},
    {'icon': Icons.pool, 'title': 'Swimming Pool'},
    {'icon': Icons.ac_unit, 'title': 'Air Conditioning'},
    {'icon': Icons.fitness_center, 'title': 'Gym'},
  ];
  List<Map<String, dynamic>> roomFacilities = [
    {'icon': Icons.bed_outlined, 'title': 'Room'},
    {'icon': Icons.fitness_center, 'title': '1,200 sqft'},
    {'icon': Icons.air, 'title': ' Air condition'},
    {'icon': Icons.water, 'title': 'Bathroom'},
    {'icon': Icons.tv, 'title': 'TV'},
    {'icon': Icons.wifi, 'title': 'Wifi'},
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        CustomText(
            title: 'Preview',
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),
        heightBox10,
        SizedBox(
          height: height / 10,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  child: CustomNetworkImage(
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_9uoSgjuK9K2J-1A9LcOJ6qxJoIQv3ek9QeI2OCPyjGiVQT-u',
                      height: height,
                      width: width / 5,
                    borderRadius: BorderRadius.circular(8),
                  ),
                );
              },
          ),
        ),

        heightBox10,
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      title: 'Property Type',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.p3
                  ),
                  heightBox10,
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffEDEDF2), width: 1)
                        ),
                        child: Image.asset(AppImages.homeActive, scale: 4, color: Colors.black,),
                      ),
                      widthBox10,
                      CustomText(
                          title: 'Resorts',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                      ),
                    ],
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
                      title: 'Property Length',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.p3
                  ),
                  heightBox10,
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xffEDEDF2), width: 1)
                        ),
                        child: Image.asset(AppImages.homeInactive, scale: 4, color: Colors.black,),
                      ),
                      widthBox10,
                      CustomText(
                          title: '12000 sqft',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),


        heightBox10,
        CustomText(
            title: 'Features',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.p3
        ),


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

        heightBox10,
        CustomText(
            title: 'Availability',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.p3
        ),
        heightBox8,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
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

        heightBox10,
        CustomText(
            title: 'Room & Guest',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.p3
        ),
        heightBox8,
        Row(
          children: [
            Expanded(
                child: Container(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius: BorderRadius.circular(28),
                    // border: Border.all(color: Color(0xffEDEDF2), width: 1)
                  ),
                  child: CustomDropDownWidget(
                      selectedValue: '2 Adults',
                      items: ['2 Adults', '3 Adults', '4 Adults'],
                      onChanged: (value) {

                      },
                      hintText: '2 Adults',
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                ),
            ),
            widthBox5,
            Expanded(
              child: Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(28),
                  // border: Border.all(color: Color(0xffEDEDF2), width: 1)
                ),
                child: CustomDropDownWidget(
                  selectedValue: '0 Children',
                  items: ['0 Children', '1 Children', '2 Children'],
                  onChanged: (value) {

                  },
                  hintText: '0 Children',
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  paddingHorizontal: 5,
                ),
              ),
            ),
            widthBox5,
            Expanded(
              child: Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(28),
                  // border: Border.all(color: Color(0xffEDEDF2), width: 1)
                ),
                child: CustomDropDownWidget(
                  selectedValue: '1 Room',
                  items: ['1 Room', '3 Room', '4 Room'],
                  onChanged: (value) {

                  },
                  hintText: '1 Room',
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ),
            ),
          ],
        ),

        heightBox10,
        Center(
          child: CustomButton(
            width: 150,
              isGradient: false,
              buttonColor: AppColors.p1,
              title: 'Search',
              onTap: () {}
          ),
        ),

        heightBox10,
        RoomCardWidget(
          title: 'Twin Room',
          facilities: roomFacilities,
        ),

        heightBox10,
        RoomCardWidget(
          title: 'Deluxe Double Room',
          facilities: roomFacilities,
        ),

        heightBox10,
        RoomCardWidget(
          title: 'Twin Room',
          facilities: roomFacilities,
        ),

        // explore by area
        heightBox10,
        CustomText(
            title: 'Explore the Area',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.p3
        ),
        heightBox10,
       Row(
         children: [
           Expanded(child:  ExploreAreaWidget(
               subtitle: 'Blue Cafe',
               subValue: '1.4 km',
               title: 'Restaurants & cafes',
               itemCount: 3,
               icon: Icons.table_restaurant_outlined
           ),),
           widthBox20,
           Expanded(child:  ExploreAreaWidget(
               subtitle: 'Central Mall',
               subValue: '1.4 km',
               title: 'Shops & Markets',
               itemCount: 3,
               icon: Icons.shopping_cart
           ),),
         ],
       ),
        heightBox10,
        Row(
          children: [
            Expanded(
              child:  ExploreAreaWidget(
                subtitle: 'Les Dunes Beach',
                subValue: '1.4 km',
                title: 'Beaches',
                itemCount: 3,
                icon: Icons.beach_access
            ),),
            widthBox20,
            Expanded(child:  ExploreAreaWidget(
                subtitle: 'Train - Riverdale Central Station',
                subValue: '1.4 km',
                title: 'Public transport',
                itemCount: 1,
                icon: Icons.emoji_transportation
            ),),
          ],
        ),

        heightBox10,
        SizedBox(
          height: height / 3.8,
          width: double.infinity,
          child: ExploreAreaMapWidget()
        ),

        heightBox20,
        // You may also like
        CustomRowWidget(
          title: CustomText(
            title: 'You may also like',
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

        heightBox10,
        // Home Card
        SizedBox(
          height: height / 3.8,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 8),
                child: GestureDetector(
                  onTap: () {
                    print('Home Card Tapped');
                    Get.to(() => HotelDetailsScreen());
                  },
                  child: HomeCardWidget(),
                ),
              );
            },
          ),
        ),


      ],
    );
  }
}
