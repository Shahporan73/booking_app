// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomBorderColor extends StatelessWidget {
  final Widget child;
  final double? radius;
  final List<Color>? gradientColors;
  final double? borderWidth;
  CustomBorderColor({
    super.key,
    required this.child,
    this.radius,
    this.gradientColors,
    this.borderWidth
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 25),
          gradient: LinearGradient(
            colors: gradientColors ?? [
              Color(0xffFFE7E7),
              Color(0xFFFFFFFF),
              Color(0xff000000),
              Color(0xFFFFFFFF),
              Color(0xFF7381FF),
              Color(0xFF000749),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
      ),
      child: Container(
        margin: EdgeInsets.all(borderWidth ?? 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 25),
          color: Colors.grey,
        ),
        child: child,
      ),
    );
  }
}
