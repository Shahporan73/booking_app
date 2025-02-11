// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/app_images/App_images.dart';
import 'package:dayf_booking_app/res/common_widget/RoundTextField.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:dayf_booking_app/view/explore_view/view/hotel_details_screen.dart';
import 'package:dayf_booking_app/view/explore_view/widget/filter_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/app_colors/App_Colors.dart';
import '../../../res/common_widget/custom_row_widget.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/common_widget/main_app_bar.dart';
import '../../../res/custom_style/custom_size.dart';
import '../../home_view/widget/home_card_widget.dart';
import '../../home_view/widget/recommanded_hole_widget.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: MainAppBar(title: 'Explore', leading: SizedBox()),
        drawer: FilterDrawer(),
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          children: [

            // Search Bar
            RoundTextField(
              hint: 'Where do you want to stay?',
              height: height / 15,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Builder(builder: (context) {
                return GestureDetector(
                  child: Image.asset(AppImages.filterIcon, scale: 4, color: Colors.black,),
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                    print('Filter Tapped');
                  },
                );
              },),
              isBorder: false,
              borderColor: AppColors.p2Light,
            ),


            // Home Card
            SizedBox(
              height: height / 3.5,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                        (index) {
                      return Container(
                        margin: EdgeInsets.only(right: 8),
                        child: GestureDetector(
                          onTap: () {
                            print('Home Card Tapped');
                            Get.to(() => HotelDetailsScreen(),
                            transition: Transition.downToUp,);
                          },
                          child: HomeCardWidget(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),


            // Recommended Hotels
            CustomRowWidget(
              title: CustomText(
                title: 'Recommended Hotels',
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

            heightBox8,
            ListView.builder(
              itemCount: 5,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Get.to(() => HotelDetailsScreen(),
                    transition: Transition.downToUp,);
                  },
                  child: RecommandedHoleWidget(),
                );
              },
            ),


          ],
        ),
      ),
    );
  }
}
