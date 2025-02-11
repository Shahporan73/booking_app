// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_colors/App_Colors.dart';
import '../custom_style/custom_size.dart';
import 'custom_button.dart';

class CustomAlertDialog {
  Future<void> customAlert({
    required BuildContext context,
    required String title,
    required String message,
    required String NegativebuttonText,
    required String PositivvebuttonText,
    required VoidCallback onPositiveButtonPressed,
    required VoidCallback onNegativeButtonPressed
}) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 14), // Replacing heightBox14 with SizedBox
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                        title: PositivvebuttonText,
                        padding_vertical: 10,
                        fontSize: 14,
                        onTap: onPositiveButtonPressed
                    ),
                  ),
                  widthBox10,
                  Expanded(
                    child: CustomButton(
                        title: NegativebuttonText,
                        padding_vertical: 10,
                        buttonColor: Colors.transparent,
                        titleColor: AppColors.darkPink,
                        border: Border.all(color: AppColors.darkPink),
                        fontSize: 14,
                        onTap: onNegativeButtonPressed
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
