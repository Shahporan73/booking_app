// ignore_for_file: prefer_const_constructors


import 'package:dayf_booking_app/res/common_widget/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/app_colors/App_Colors.dart';
import '../../../res/common_widget/custom_app_bar.dart';
import '../../../res/common_widget/custom_button.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/custom_style/custom_style.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool _isCurrentPasswordVisible = false;
  bool _isNewPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  // Toggles the visibility of current password
  void _toggleCurrentPasswordVisibility() {
    setState(() {
      _isCurrentPasswordVisible = !_isCurrentPasswordVisible;
    });
  }

  // Toggles the visibility of new password
  void _toggleNewPasswordVisibility() {
    setState(() {
      _isNewPasswordVisible = !_isNewPasswordVisible;
    });
  }

  // Toggles the visibility of confirm password
  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: MainAppBar(title: 'Change password'),
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Current Password Field
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.black100, width: 1)
              ),
              child: Row(
                children: [
                  Icon(Icons.lock_outline, color: Colors.black54),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      obscureText: !_isCurrentPasswordVisible,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Current Password',
                          hintStyle: hintStyle
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      _isCurrentPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black54,
                    ),
                    onPressed: _toggleCurrentPasswordVisibility,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // New Password Field
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.black100, width: 1)
              ),
              child: Row(
                children: [
                  Icon(Icons.lock_outline, color: Colors.black54),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      obscureText: !_isNewPasswordVisible,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'New Password',
                          hintStyle: hintStyle
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      _isNewPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black54,
                    ),
                    onPressed: _toggleNewPasswordVisibility,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Confirm Password Field
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.black100, width: 1)
              ),
              child: Row(
                children: [
                  Icon(Icons.lock_outline, color: Colors.black54),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      obscureText: !_isConfirmPasswordVisible,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm New Password',
                          hintStyle: hintStyle
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      _isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black54,
                    ),
                    onPressed: _toggleConfirmPasswordVisibility,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Get.to(
                  //       ()=> ForgotPasswordScreen(),
                  //   transition: Transition.rightToLeft,
                  //   duration: Duration(milliseconds: 500),
                  // );
                },
                child: CustomText(
                  title: "Forgot the password?",
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Confirm button
            CustomButton(
              title: "Confirm",
              borderRadius: 8,
              onTap: () {
                // Handle password change confirmation
              },
            ),
          ],
        ),
      ),
    );
  }
}