// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/common_widget/custom_app_bar.dart';
import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:dayf_booking_app/view/profile_view/view/change_password_screen.dart';
import 'package:dayf_booking_app/view/profile_view/view/edit_profile_screen.dart';
import 'package:dayf_booking_app/view/profile_view/widget/profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/app_images/App_images.dart';
import '../../../res/common_widget/custom_alert_dialog.dart';
import '../../rule_view/view/about_us_screen.dart';
import '../../rule_view/view/privacy_policy_screen.dart';
import '../../rule_view/view/terms_and_condition_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // app bar
            Container(
              width: double.infinity,
              height: height / 4.5,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                color: AppColors.p2DarkHover
              ),
              child: Column(
                children: [
                  heightBox20,
                  CustomAppBar(appBarName: 'Profile', isLeading: false,),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                    ),
                    title: CustomText(title: 'John Doe', fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),
                    subtitle: CustomText(title: 'B2XgM@example.com', fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white,),
                    trailing: GestureDetector(
                      onTap: () {
                        Get.to(
                                ()=> EditProfileScreen()
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(AppImages.editIcon, scale: 4,),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // my booking
            Padding(
                padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  ProfileItemWidget(
                      icon: AppImages.myBookingItem,
                      title: 'My Booking',
                      onTap: (){}
                  ),
                  heightBox10,
                  ProfileItemWidget(
                      icon: AppImages.languageIcon,
                      title: 'Language',
                      onTap: (){}
                  ),
                  heightBox10,
                  ProfileItemWidget(
                      icon: AppImages.passwordIcon,
                      title: 'Change password',
                      onTap: (){
                        Get.to(
                            ()=> ChangePasswordScreen()
                        );
                      }
                  ),
                  heightBox10,
                  ProfileItemWidget(
                      icon: AppImages.aboutUsIcon,
                      title: 'About Us',
                      onTap: (){
                        Get.to(
                                ()=> AboutUsScreen()
                        );
                      }
                  ),
                  heightBox10,
                  ProfileItemWidget(
                      icon: AppImages.privacyPolicyIcon,
                      title: 'Privacy Policy',
                      onTap: (){
                        Get.to(
                                ()=> PrivacyAndPolicyScreen()
                        );
                      }
                  ),
                  heightBox10,
                  ProfileItemWidget(
                      icon: AppImages.termsAndConditionIcon,
                      title: 'Terms And Condition',
                      onTap: (){
                        Get.to(
                                ()=> TermsAndConditionsScreen()
                        );
                      }
                  ),
                  heightBox10,
                  ProfileItemWidget(
                      icon: AppImages.logoutIcon,
                      color: Color(0xffEE1B1F),
                      title: 'Logout',
                      onTap: (){
                        CustomAlertDialog().customAlert(context: context,
                            title: 'Logout',
                            message: 'Are you sure you want to logout your account?',
                            NegativebuttonText: 'Cancel',
                            PositivvebuttonText: 'Logout',
                            onPositiveButtonPressed: () {
                              Navigator.pop(context);
                            },
                            onNegativeButtonPressed: () {
                              Navigator.pop(context);
                            }
                        );
                      }
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
