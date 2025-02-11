// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../app_colors/App_Colors.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarName;
  final Color titleColor;
  final Color leadingColor;
  final VoidCallback? onTap;
  final bool? isLeading;

  const CustomAppBar({
    super.key,
    required this.appBarName,
    this.titleColor = AppColors.blackColor,
    this.onTap,
    this.leadingColor = Colors.black,
    this.isLeading = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Left-aligned back button or custom widget
        Positioned(
          left: 0,
          child: isLeading == true?
              GestureDetector(
                onTap: Navigator.of(context).pop,
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: Icon(Icons.arrow_back, color: leadingColor, size: 24),
                ),
              ):SizedBox(),
        ),

        // Center-aligned title
        Center(
          child: CustomText(
            title: appBarName,
            color: titleColor,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
