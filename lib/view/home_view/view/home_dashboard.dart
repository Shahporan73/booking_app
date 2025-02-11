// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/view/explore_view/view/explore_screen.dart';
import 'package:dayf_booking_app/view/favorite_view/view/favorite_screen.dart';
import 'package:dayf_booking_app/view/profile_view/view/profile_screen.dart';
import 'package:flutter/material.dart';
import '../../../res/app_colors/App_Colors.dart';
import '../../../res/app_images/App_images.dart';
import '../../message_view/view/chat_list_screen.dart';
import 'home_screen.dart';

class HomeDashboard extends StatefulWidget {

  HomeDashboard({super.key,});

  @override
  State<HomeDashboard> createState() => _BrokerHomeState();
}

class _BrokerHomeState extends State<HomeDashboard> {
  int currentIndex = 0;

  // List of body views based on selected index
  static List<Widget> screens = <Widget>[
    HomeScreen(),
    ExploreScreen(),
    ChatListScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  // Active icon list for each tab
  final List<String> activeIcons = [
    AppImages.homeActive,
    AppImages.exploreActive,
    AppImages.messageActive,
    AppImages.bookingActive,
    AppImages.profileActive
  ];

  // Inactive icon list for each tab
  final List<String> inactiveIcons = [
    AppImages.homeInactive,
    AppImages.exploreInactive,
    AppImages.messageInactive,
    AppImages.bookingInactive,
    AppImages.profileInactive
  ];

  // Titles for bottom navigation
  List<String> listOfTitles = [
    'Home',
    'Explore',
    'Message',
    'Booking',
    'Profile',
  ];

  bool get isTablet {
    return MediaQuery.of(context).size.width > 600.0;
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen size using MediaQuery
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          // Use Expanded to make sure the content takes up remaining space
          Expanded(
            child: screens[currentIndex], // Selected screen view
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height:  isTablet ? size.height * 0.10 : size.height * 0.08, // Adjust the bottom navigation bar height dynamically
        decoration: BoxDecoration(
          color: AppColors.p2,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(5, (index) {
            return Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Animated top border (highlight) when selected
                    AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      margin: EdgeInsets.only(
                        bottom: index == currentIndex ? 0 : (isTablet ? size.width * 0.018 : size.width * 0.025),
                        right: size.width * .0400,
                        left: size.width * .0400,
                      ),
                      width: size.width * 0.128,
                      height: index == currentIndex ? (isTablet ? size.width * 0.006 : size.width * 0.010) : 0,
                    ),
                    // Custom icon using Image.asset (active/inactive)
                    Image.asset(
                      index == currentIndex
                          ? activeIcons[index]  // Active icon from the list
                          : inactiveIcons[index],  // Inactive icon from the list
                      width: isTablet ? size.width * 0.035 :size.width * 0.060,
                      height: isTablet ? size.height * 0.035 :size.height * 0.030,
                      color: index == currentIndex
                          ? AppColors.whiteColor
                          : Colors.white, // Apply color if needed
                    ),

                    // Show the title only when currentIndex == index
                    /*index == currentIndex
                        ? */
                    Text(
                      listOfTitles[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isTablet ? 12 : 12,
                      ),
                    ),
                    // : SizedBox(),

                    // Animated bottom border (highlight) when selected
                    AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      margin: EdgeInsets.only(
                        top: index == currentIndex ? 0 : (isTablet ? size.width * .006 : size.width * .010),
                        right: size.width * .0422,
                        left: size.width * .0422,
                      ),
                      width: size.width * 0.300,
                      height: index == currentIndex ? (isTablet ? size.width * 0.006 : size.width * 0.010) : 0,
                      decoration: BoxDecoration(
                        color: Color(0xffFDFDFD),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
