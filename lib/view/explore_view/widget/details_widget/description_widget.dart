import 'package:dayf_booking_app/res/common_widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../../../res/custom_style/custom_size.dart';

class DescriptionWidget extends StatelessWidget {
  final String description;
  DescriptionWidget({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            title: 'Description',
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),
        heightBox10,
        // Expanded text with "Read More" functionality
        ReadMoreText(
          description,
          trimLines: 5,
          colorClickableText: Colors.teal,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Read More',
          trimExpandedText: 'Show Less',
          style: GoogleFonts.urbanist(color: Colors.grey[700]),
          moreStyle: GoogleFonts.urbanist(
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }
}
