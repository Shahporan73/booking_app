// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace


import 'package:dayf_booking_app/res/custom_style/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/app_colors/App_Colors.dart';
import '../../../res/app_images/App_images.dart';
import '../../../res/common_widget/custom_network_image_widget.dart';
import '../../../res/common_widget/custom_text.dart';
import '../../../res/common_widget/picker_dialog.dart';

class PersonalChatScreen extends StatefulWidget {
  const PersonalChatScreen({super.key});

  @override
  State<PersonalChatScreen> createState() => _PersonalChatScreenState();
}

class _PersonalChatScreenState extends State<PersonalChatScreen> {
  // Sample data for the chat
  final List<Map<String, dynamic>> chatMessages = [
    {
      "sender": "User", // Changed to "User"
      "message": "Hey there! 👋",
      "time": "10:08",
      "isSentByMe": false,
    },
    {
      "sender": "User", // Changed to "User"
      "message":
      "Game RA 2 has just had a new update for macOS.\nThere is support for many new items and characters. 😌",
      "time": "10:08",
      "isSentByMe": false,
    },
    {
      "sender": "Me", // "Me" for messages sent by the user
      "message": "Hi!",
      "time": "10:10",
      "isSentByMe": true,
    },
    {
      "sender": "Me", // "Me" for messages sent by the user
      "message":
      "Great, thanks for letting me know! \nI really look forward to experiencing it soon. 🎉",
      "time": "10:11",
      "isSentByMe": true,
    },
    {
      "sender": "User", // Changed to "User"
      "message": "Does this update fix error 352 for the Engineer character?",
      "time": "10:11",
      "isSentByMe": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // App Bar section
            // App Bar section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: CustomNetworkImage(
                          imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbZb-w-tFztUeZtuUdXxVip27rW8R85CqdnA&s',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      title: CustomText(
                        title: "Grand Palace",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1D242D),
                      ),
                      subtitle: CustomText(
                        title: "Active now",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            20.heightBox,

            // Chat messages section
            Expanded(
              child: ListView.builder(
                itemCount: chatMessages.length,
                itemBuilder: (context, index) {
                  final message = chatMessages[index];
                  final isSentByMe = message['isSentByMe'] as bool;

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    child: Align(
                      alignment: isSentByMe
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: width * 0.70,
                        decoration: BoxDecoration(
                          color: isSentByMe
                              ? AppColors.p3
                              : AppColors.p1,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: isSentByMe
                                  ? Radius.circular(0)
                                  : Radius.circular(10),
                              topLeft: isSentByMe
                                  ? Radius.circular(10)
                                  : Radius.circular(0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              message['message'],
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: isSentByMe
                                      ? Colors.white
                                      : Colors.white),
                            ),
                            6.heightBox,
                            Align(
                              alignment: isSentByMe? Alignment.centerRight : Alignment.centerRight,
                              child: Text(
                                message['time'],
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: isSentByMe? Colors.white : AppColors.whiteColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Input message field section
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    )
                  ]
              ),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Message',
                          suffixIcon: Container(
                            width: 80,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    PickerDialog().showImagePickerDialog(context);
                                  },
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: AppColors.secondaryColor,
                                        shape: BoxShape.circle
                                    ),
                                    child: Icon(Icons.add, color: AppColors.whiteColor,size: 22,),
                                  ),
                                ),
                                widthBox10,
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(
                                    onPressed: () {

                                    },
                                    icon: Image.asset(
                                      AppImages.sendIcon,
                                     height: 25,width: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}