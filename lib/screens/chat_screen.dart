import 'package:chat_app/model/message.dart';
import 'package:chat_app/repository/messages_repo.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/resources/color_manager.dart';
import '../webservices/messages_api.dart';
import '../widgets/chat_view_widgets/chat_screen_text_field.dart';
import '../widgets/chat_view_widgets/leading_app_bar.dart';
import '../widgets/chat_view_widgets/messages_part.dart';
import '../widgets/friends_screen_widgets/Title_search_bar.dart';
/*TODO:
1. pop up notifications.
2. available users
3. last message.
*/

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key, required this.messagesRequest}) : super(key: key);
  MessagesRequest messagesRequest;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  DatabaseReference ref = FirebaseDatabase.instance.ref("hello_firebase");

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: ColorManager.primaryColor,
      body: Padding(
        //TODO: TEMP DATA
        padding: EdgeInsets.only(
          top: 66.h,
          bottom: 37.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitleSearchBar(
              leading: Leading(),
            ),
            SizedBox(height: 56.h,) ,
            const MessagesPart(),
            const ChatScreenTextField()
          ],
        ),
      ),
    );
  }
}
