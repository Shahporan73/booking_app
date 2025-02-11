import 'package:dayf_booking_app/view/favorite_view/controller/favorite_controller.dart';
import 'package:dayf_booking_app/view/favorite_view/view/booking_details_screen.dart';
import 'package:dayf_booking_app/view/favorite_view/view/review_screen.dart';
import 'package:dayf_booking_app/view/favorite_view/widget/booking_card_widget.dart';
import 'package:dayf_booking_app/view/favorite_view/widget/past_booking_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/app_colors/App_Colors.dart';
import '../../../res/common_widget/custom_button.dart';
import '../../../res/common_widget/main_app_bar.dart';
import '../../../res/custom_style/custom_size.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  final FavoriteController controller = Get.put(FavoriteController());
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: MainAppBar(
        title: 'Booking History',
        backgroundColor: AppColors.bgColor,
        leading: SizedBox(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Obx(
              () => Column(
            children: [
              Container(
                width: width * double.infinity,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.darkHover),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                          padding_vertical: 8,
                          fontSize: 14,
                          title: 'Upcoming',
                          isGradient: false,
                          buttonColor:
                          controller.isSelected.value ==
                              'Upcoming'
                              ? AppColors.p5
                              : Colors.transparent,
                          titleColor:
                          controller.isSelected.value ==
                              'Upcoming'
                              ? AppColors.whiteColor
                              : AppColors.blackColor,
                          onTap: () {
                            controller.updateSelectedProduct('Upcoming');
                          }),
                    ),
                    widthBox10,
                    Expanded(
                      child: CustomButton(
                          padding_vertical: 8,
                          fontSize: 14,
                          title: 'Past',
                          isGradient: false,
                          buttonColor:controller.isSelected.value ==
                              'Past'
                              ? AppColors.p5
                              : Colors.transparent,
                          titleColor: controller.isSelected.value ==
                              'Past'
                              ? AppColors.whiteColor
                              : AppColors.blackColor,
                          onTap: () {
                            controller.updateSelectedProduct('Past');
                          }),
                    ),
                  ],
                ),
              ),


              heightBox20,
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return BookingCardWidget(
                        bookingId: 'Booking ID: 2223211',
                        bookingDate: 'April 26, 2023',
                        imagePath: 'https://images.leadconnectorhq.com/image/f_webp/q_80/r_1200/u_https://assets.cdn.filesafe.space/bdU4aTTwhHvvoXr9bg8P/media/624582cc2d3a6e78bcb8b4bc.png',
                        title: 'Grand Palace',
                        location: "Kuta, Algeria",
                        rating: "4.9",
                        price: "\$80",
                        time: 'Night',
                        btnTitle: controller.isSelected.value =='Upcoming'
                            ? 'Cancel' : 'Write Review',
                        onTapDetails: () {
                          Get.to(
                              () => BookingDetailsScreen(),
                              transition: Transition.downToUp
                          );
                        },
                        onTwinTap: () {

                          if(controller.isSelected.value =='Upcoming'){

                          }else{
                            Get.to(
                                ()=>ReviewScreen(),
                              transition: Transition.downToUp
                            );
                          }


                        },
                    );
                  },
              )

              /*
                  : ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                  return PastBookingWidget();
                },
              ),*/

            ],
          ),
        ),
      ),
    );
  }
}
