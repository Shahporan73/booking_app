import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselSliderController extends GetxController {
  late PageController pageController; // Late initialization
  var currentPage = 0.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0); // Initialize here
    startAutoPlay(); // Start the auto-play animation
  }

  void startAutoPlay() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentPage.value < 2) {
        currentPage.value++;
      } else {
        currentPage.value = 0;
      }
      if (pageController.hasClients) {
        pageController.animateToPage(
          currentPage.value,
          duration: const Duration(milliseconds: 350),
          curve: Curves.linearToEaseOut, // Swapping-like effect
        );
      }
    });
  }

  @override
  void onClose() {
    _timer?.cancel(); // Ensure timer is canceled
    pageController.dispose(); // Dispose the controller
    super.onClose();
  }

  void onPageChanged(int page) {
    currentPage.value = page;
  }
}
