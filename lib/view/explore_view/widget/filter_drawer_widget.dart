// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/res/common_widget/RoundTextField.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/view/explore_view/view/filter_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/app_colors/App_Colors.dart';
import '../../../res/common_widget/custom_button.dart';
import '../../../res/common_widget/custom_checkbox_tile.dart';
import '../../../res/custom_style/custom_size.dart';
import '../controller/filter_controller.dart';

class FilterDrawer extends StatelessWidget {
  FilterDrawer({Key? key}) : super(key: key);

  // double _minPrice = 30.0;
  // double _maxPrice = 100.0;
  // double _currentMinPrice = 30.0;
  // double _currentMaxPrice = 100.0;


  @override
  Widget build(BuildContext context) {
    final FilterController controller = Get.put(FilterController());
    double minPrice = 30.0;
    double maxPrice = 100.0;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.60,
      child: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Filter By
                  CustomText(
                      title: 'Filter By',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                  heightBox10,
                  CustomText(
                    title: 'Price',
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                  Obx(
                        () => RangeSlider(
                      values: RangeValues(
                        controller.currentMinPrice.value,
                        controller.currentMaxPrice.value,
                      ),
                      min: minPrice,
                      max: maxPrice,
                      activeColor: AppColors.p3,
                      inactiveColor: Colors.grey.shade300,
                      onChanged: (values) {
                        controller.currentMinPrice.value = values.start;
                        controller.currentMaxPrice.value = values.end;
                      },
                    ),
                  ),

                  Row(
                    children: [
                      Text(
                        'Price : ',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      Obx(() => Text(
                        '\$${controller.currentMinPrice.toInt()} - \$${controller.currentMaxPrice.toInt()}',
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        ),
                      ),),
                    ],
                  ),



                  heightBox5,
                  CustomText(
                    title: 'Hotel Rating',
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),

                  // Hotel Rating
                  heightBox5,
                  Obx(
                    () => SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(5, (index) {
                            bool isSelected = controller.selectedRating.value == index + 1;
                            return GestureDetector(

                              onTap: () {
                                controller.selectedRating.value = index + 1;
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                    color: isSelected ? AppColors.p3 : AppColors.p2Light,
                                    borderRadius: BorderRadius.circular(4)
                                ),
                                child: Row(
                                  children: [
                                    CustomText(
                                      title: '${index + 1}',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: isSelected ? Colors.white : AppColors.p4,
                                    ),
                                    widthBox5,
                                    Icon(Icons.star, color: isSelected ? Colors.white : AppColors.p4, size: 14,),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ),

                  // Location
                  heightBox10,
                  CustomText(
                    title: 'Location',
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: AppColors.blackColor,
                  ),
                  heightBox5,
                  Obx(() {
                    return Column(
                      children: [
                        RoundTextField(
                            hint: 'Where do you want to stay?',
                          hintFontSize: 9,
                          isBorder: false,
                          height: height / 25,
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        Column(
                          children: controller.location.entries.map((entry) {
                            return CustomCheckboxTile(
                              title: entry.key,
                              value: entry.value,
                              onChanged: (value) {
                                controller.toggleLocation(entry.key, value!);
                              },
                            );
                          }).toList(),
                        )
                      ],
                    );
                  }),



                  // Property Type
                  CustomText(
                    title: ' Property Type',
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: AppColors.blackColor,
                  ),
                  Obx(() {
                    return Column(
                      children: controller.propertyType.entries.map((entry) {
                        return CustomCheckboxTile(
                          title: entry.key,
                          value: entry.value,
                          onChanged: (value) {
                            controller.togglePropertyType(entry.key, value!);
                          },
                        );
                      }).toList(),
                    );
                  }),



                  // Hotel Features
                  CustomText(
                    title: 'Hotel Features',
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: AppColors.blackColor,
                  ),
                  Obx(() {
                    return Column(
                      children: controller.hotelFeature.entries.map((entry) {
                        return CustomCheckboxTile(
                          title: entry.key,
                          value: entry.value,
                          onChanged: (value) {
                            controller.toggleHotelFeature(entry.key, value!);
                          },
                        );
                      }).toList(),
                    );
                  }),
                  // Time Section
                  CustomText(
                    title: 'Room Options',
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: AppColors.blackColor,
                  ),
                  Obx(() {
                    return Column(
                      children: controller.roomOptions.entries.map((entry) {
                        return CustomCheckboxTile(
                          title: entry.key,
                          value: entry.value,
                          onChanged: (value) {
                            controller.toggleRoomOption(entry.key, value!);
                          },
                        );
                      }).toList(),
                    );
                  }),
                  heightBox5,
                  // Apply Button
                  CustomButton(
                    title: 'Apply',
                    padding_vertical: 8,
                    isGradient: false,
                    buttonColor: AppColors.p2,
                    onTap: () {
                      // Logic to handle the "Apply" action
                      print('Selected Property Type: ${controller.propertyType}');
                      print('Selected Hotel Features: ${controller.hotelFeature}');
                      print('Selected Room Options: ${controller.roomOptions}');
                      Navigator.pop(context);

                      Get.to(
                        () => FilterResultScreen(),
                      );
                    },
                  ),

                  heightBox20,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
