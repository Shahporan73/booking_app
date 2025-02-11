// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/common_widget/custom_text.dart';

class EmailBoxWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController? controller;
  final IconData icon;
  const EmailBoxWidget({super.key, required this.labelText, required this.hintText, this.controller, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding:
        EdgeInsets.symmetric(horizontal: 10, vertical: 24),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xffFDEEE9),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Icon(
                  icon ?? Icons.email,
                  size: 32,
                  color: Color(0xffEA5326),
                ),
              ),
            ),
            5.widthBox,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: CustomText(
                      title: labelText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),

                  5.heightBox,
                  TextField(
                    readOnly: false,
                    controller: controller,
                    maxLines: 1,
                    style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white, // Set text color to white
                    ),
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.white60, // Hint text color remains grey
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
