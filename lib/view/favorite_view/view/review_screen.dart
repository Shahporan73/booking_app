// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/res/common_widget/main_app_bar.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/app_colors/App_Colors.dart';
import '../../../res/common_widget/RoundTextField.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/custom_style/custom_size.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: MainAppBar(title: 'Review'),
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Average Rating & Review count
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Average Rating
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '4.8 ★',
                          style: GoogleFonts.urbanist(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '1,64,002 Ratings\n&\n 5,922 Reviews',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    // Rating Distribution Bars
                    Expanded(
                      child: Column(
                        children: [
                          ratingBar(5, 0.8),
                          ratingBar(4, 0.6),
                          ratingBar(3, 0.4),
                          ratingBar(2, 0.2),
                          ratingBar(1, 0.1),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                // Star Rating Input
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RatingBar.builder(
                    itemSize: 16,
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.orange, size: 12,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(height: 40),

                CustomText(
                  title: "Please share your opinion about the product",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor,
                ),
                RoundTextField(
                  hint: "Your review",
                  maxLine: 6,
                  height: MediaQuery.of(context).size.height / 7,
                  vertical_padding: 12,
                  focusColor: AppColors.blackColor,
                  borderRadius: 4,
                  focusBorderRadius: 4,
                  filled: true,
                  fillColor: Color(0xffDFE1E3),
                ),
                heightBox50,
                CustomButton(
                    title: "Send",
                    onTap: (){}
                )


              ],
            ),

          ],
        ),
      ),
    );
  }
  // Widget for creating the star rating distribution bar
  Widget ratingBar(int starCount, double fillPercent) {
    return Row(
      children: [
        Text(
          '$starCount ★',
          style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              FractionallySizedBox(
                widthFactor: fillPercent,
                child: Container(
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
