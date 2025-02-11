// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:flutter/material.dart';

class ExploreAreaWidget extends StatelessWidget {
  final String subtitle;
  final String subValue;
  final String title;
  final int itemCount;
  final IconData icon;
  ExploreAreaWidget({super.key,
    required this.subtitle,
    required this.subValue,
    required this.title,
    required this.itemCount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.black54, size: 18,),
            widthBox5,
            CustomText(
                title: title,
              fontSize: 14,
            ),
          ],
        ),
        heightBox5,

        // Subtitle and Sub-value (if provided)
        ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return Row(
                children: [
                 Expanded(child:  CustomText(title: subtitle, fontSize: 14,)),
                  widthBox5,
                  CustomText(title: subValue, fontSize: 14,),
                ],
              );
            },
        ),

      ],
    );
  }
}
