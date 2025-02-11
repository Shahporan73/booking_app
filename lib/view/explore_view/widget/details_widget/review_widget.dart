// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:dayf_booking_app/view/explore_view/widget/review_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../res/app_colors/App_Colors.dart';
import '../../../../res/common_widget/RoundTextField.dart';
import '../../../../res/common_widget/custom_text.dart';
import '../../../../res/custom_style/custom_size.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ListView.builder(
          itemCount: 5,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              return ReviewCardWidget(
                  imagePath: 'https://cdn.prod.website-files.com/66ef9b0d2b8f54536bceae8a/66ef9b0d2b8f54536bceb04e_Team%20____%20Img%20%2001.png',
                  title: 'Wade Warren',
                  postdate: '21/01/2024',
                  rating: 3,
                  postText: 'I think the course is great. '
                      'I was worried I would be bored because '
                      'of how many hours it lasts but it never happened. '
                      'The content is great, I feel like I learned so much. It\'s '
                      'absolutely worthy.'
              );
            },
        ),


      ],
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
                    color: AppColors.p2,
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
