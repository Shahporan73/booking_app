// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewCardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String postdate;
  final double rating;
  final String postText;
  const ReviewCardWidget({super.key, required this.imagePath, required this.title, required this.postdate, required this.rating, required this.postText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1
          )
        ]
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.amber,
                backgroundImage: NetworkImage(imagePath),
              ),
              widthBox10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      title: title,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  heightBox5,
                  CustomText(
                    title: postdate,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              Spacer(),
              RatingBarIndicator(
                itemCount: 5,
                  itemSize: 16,
                  rating: rating,
                  itemBuilder: (context, index) {
                    return Icon(Icons.star, color: Colors.amber, size: 18,);
                  },
              ),

            ],
          ),
          heightBox10,
          CustomText(
              title: postText,
            fontWeight: FontWeight.w400,
            fontSize: 10,
          )
        ],
      ),
    );
  }
}
