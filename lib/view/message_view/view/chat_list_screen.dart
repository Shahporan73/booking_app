// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/res/app_colors/App_Colors.dart';
import 'package:dayf_booking_app/res/common_widget/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/chat_list_widget.dart';
import 'chat_screen.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: MainAppBar(title: 'Message', leading: SizedBox(),),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return PersonalUserListWidget(
                name: 'Grand Palace',
                imgPath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbZb-w-tFztUeZtuUdXxVip27rW8R85CqdnA&s',
                lastMessage: 'Great, thanks so much! 💫',
                time: '09/05',
                messageCount: '5',
                onTap: (){
                  Get.to(
                        () => PersonalChatScreen(),
                    transition: Transition.downToUp,
                    duration: Duration(milliseconds: 100),
                  );
                }
            );
          },
        ),
      ),
    );
  }
}
