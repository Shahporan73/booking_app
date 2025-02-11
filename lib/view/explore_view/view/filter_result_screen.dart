// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/res/app_images/App_images.dart';
import 'package:dayf_booking_app/res/common_widget/RoundTextField.dart';
import 'package:dayf_booking_app/res/common_widget/main_app_bar.dart';
import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:dayf_booking_app/res/custom_style/custom_style.dart';
import 'package:dayf_booking_app/view/explore_view/widget/filter_result_card_widget.dart';
import 'package:dayf_booking_app/view/home_view/widget/home_card_widget.dart';
import 'package:flutter/material.dart';

class FilterResultScreen extends StatelessWidget {
  const FilterResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar(title: 'Explore'),
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          children: [

            RoundTextField(
                hint: 'Where do you want to stay?',
              isBorder: false,
              prefixIcon: Icon(Icons.search, size: 20, color: Colors.grey,),
              suffixIcon: GestureDetector(
                child: Image.asset(AppImages.filterIcon, scale: 4,),
              ),
            ),
            heightBox20,
            GridView.builder(
              itemCount: 15,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: height / 3.2
              ),
              itemBuilder: (context, index) {
                return FilterResultCardWidget(
                    title: "Blue Nature",
                    imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_9uoSgjuK9K2J-1A9LcOJ6qxJoIQv3ek9QeI2OCPyjGiVQT-u',
                    rating: "4.9",
                    location: "Ubud",
                    price: "\$80",
                    time: 'Night',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
