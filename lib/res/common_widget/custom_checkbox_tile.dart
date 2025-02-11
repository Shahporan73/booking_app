// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../app_colors/App_Colors.dart';
import 'custom_text.dart';

class CustomCheckboxTile extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomCheckboxTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2), // Reducing padding
      child: Row(
        mainAxisSize: MainAxisSize.min, // Makes the row as small as possible
        children: [
          Checkbox(
            checkColor: AppColors.whiteColor,
            side: BorderSide(color: AppColors.blackColor),
            activeColor: AppColors.primaryColor,
            value: value,
            onChanged: onChanged,
            visualDensity: VisualDensity.compact, // Compact checkbox size
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Smaller hit area
          ),
          Expanded(
            child: CustomText(
              title: title,
              fontSize: 12,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
