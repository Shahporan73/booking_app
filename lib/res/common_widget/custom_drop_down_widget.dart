// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../app_colors/App_Colors.dart';

class CustomDropDownWidget extends StatelessWidget {
  final String selectedValue;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String hintText;
  final Decoration? decoration;
  final double? paddingHorizontal;

  CustomDropDownWidget({
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    required this.hintText,
    this.decoration,
    this.paddingHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    // Ensure the items list contains unique values
    final uniqueItems = items.toSet().toList();

    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal ?? 10),
      decoration: decoration ?? BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton<String>(
        value: uniqueItems.contains(selectedValue) ? selectedValue : null, // Ensure the selected value is valid
        hint: Text(hintText),
        underline: SizedBox(),
        onChanged: onChanged,
        items: uniqueItems
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        isExpanded: true,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
        ),
        dropdownColor: AppColors.whiteColor,
      ),
    );
  }
}
