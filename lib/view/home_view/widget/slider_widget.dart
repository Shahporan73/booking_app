// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/common_widget/custom_network_image_widget.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/custom_style/custom_size.dart';
import '../controller/caroselSliderController.dart';

class SliderWidget extends StatefulWidget {
  SliderWidget({super.key});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> with SingleTickerProviderStateMixin {
  final CarouselSliderController controller = Get.put(CarouselSliderController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 180, // Increased height to fit contents
      child: Column(
        children: [
          Expanded(
            flex: 3, // Adjusts height dynamically
            child: PageView.builder(
              dragStartBehavior: DragStartBehavior.start,
              physics: const ScrollPhysics(),
              onPageChanged: (value) {
                controller.onPageChanged(value);
              },
              controller: controller.pageController,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return _buildScalingTransition(index, height, width);
              },
            ),
          ),
          const SizedBox(height: 8),
          SmoothPageIndicator(
            controller: controller.pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.black,
              dotHeight: 10,
              dotWidth: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScalingTransition(int index, double height, double width) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0.8, end: 1.0),
      duration: const Duration(milliseconds: 500),
      builder: (context, double scale, child) {
        return Transform.scale(
          scale: scale,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CustomNetworkImage(
              imageUrl: 'https://img.pikbest.com/backgrounds/20210920/booking-luxury-hotel-banner-background-eps_6126596.jpg!bw700',
              height: height,
              width: width,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
}
