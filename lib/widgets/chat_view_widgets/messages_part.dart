import 'package:chat_app/app/resources/color_manager.dart';
import 'package:chat_app/app/resources/font_manager.dart';
import 'package:chat_app/app/resources/styles_manager.dart';
import 'package:chat_app/app/resources/values_manager.dart';
import 'package:chat_app/providers/chat_screen_provider.dart';
import 'package:chat_app/webservices/messages_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../model/message.dart';

//Features :
/*
notifications
banning naughty speech
backup the data reaching to most whatsapp features
 */
class MessagesPart extends StatefulWidget {
  const MessagesPart({
    Key? key,
  }) : super(key: key);

  @override
  State<MessagesPart> createState() => _MessagesPartState();
}

class _MessagesPartState extends State<MessagesPart> {
  var database = FirebaseDatabase.instance.ref('hello_firebase').get();

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatScreenProvider>(
      builder: (_, provider, __) {
        provider.loadMessages();
        return KeyboardVisibilityBuilder(builder: (context, isOpened) {
          return Expanded(
            child: SizedBox(
              height: (isOpened) ? 200.h : 400.h,
              child: ListView(
                children:
                    List.generate(provider.listOfMessages.length, (index) {
                  Message currentMessage = provider.listOfMessages[index];
                  if (currentMessage.sender == "Ahmad") {
                    return MessageBubble(message: currentMessage, isUser: true);
                  } else {
                    return MessageBubble(
                        message: currentMessage, isUser: false);
                  }
                }),
              ),
            ),
          );
        });
      },
    );
  }
}

//TODO REMOVING THIS THING
class ChattersMessages extends StatelessWidget {
  Message message;
  bool isUser;
  ChattersMessages({
    Key? key,
    required this.message,
    required this.isUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Container(
        alignment: (isUser) ? Alignment.centerLeft : Alignment.centerRight,
        margin: EdgeInsets.only(
            left: (isUser) ? 30.w : 60.w,
            right: (isUser) ? 27.w : 57.w,
            bottom: 12.h),
        decoration: BoxDecoration(
          color: (isUser)
              ? ColorManager.medGrey
              : ColorManager.nonUserMessagesColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              RadiusManager.r20,
            ),
          ),
        ),
        padding: EdgeInsets.only(
            left: (isUser) ? 17.w : 15.w,
            right: (isUser) ? 28.w : 24.w,
            top: 17.h,
            bottom: 17.h),
        child: Text(
          message.content,
          style: TextStyle(
              //TODO:Need to change this
              color: ColorManager.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins"),
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final Message message;
  final bool isUser;
  const MessageBubble({super.key, required this.message, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: <Widget>[
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 10),
          //   child: Text(
          //     message.sender,
          //     style: TextStyle(
          //         fontSize: 13, fontFamily: 'Poppins', color: Colors.black87),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(
                left: (isUser) ? 30.w : 57.w, right: isUser ? 57.w : 30.w),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(20)
                  // bottomLeft: Radius.circular(50),
                  // topLeft: isUser ? Radius.circular(50) : Radius.circular(0),
                  // bottomRight: Radius.circular(50),
                  // topRight: isUser ? Radius.circular(0) : Radius.circular(50),
                  ),
              color: isUser
                  ? ColorManager.medGrey
                  : ColorManager.nonUserMessagesColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  message.content,
                  style: TextStyle(
                    color: ColorManager.white,
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
