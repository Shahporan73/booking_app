import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:flutter/material.dart';

import '../../../res/common_widget/custom_text.dart';
import '../../../res/custom_style/custom_size.dart';

class ProfileItemWidget extends StatelessWidget {
  final String icon;
  final String title;
  final Color? color;
  final VoidCallback onTap;
  ProfileItemWidget({super.key, required this.icon, required this.title, required this.onTap, this.color, });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: color?? AppColors.p2,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Image.asset(icon, scale: 4,),
            ),
            widthBox10,
            CustomText(title: title, fontWeight: FontWeight.w400, fontSize: 18,),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Colors.black, size: 18,),
          ],
        ),
      ),
    );
  }
}
