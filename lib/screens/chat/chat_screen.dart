import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/resources/color_manager.dart';
import '../../webservices/messages_api.dart';
import '../../widgets/chat_view_widgets/chat_screen_text_field.dart';
import '../../widgets/chat_view_widgets/leading_app_bar.dart';
import '../../widgets/friends_screen_widgets/Title_search_bar.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key, required this.messagesRequest}) : super(key: key);
  final MessagesRequest messagesRequest;
  @override
  Widget build(BuildContext context) {
    final comingMessages = messagesRequest.execute("0597501896", "0595902228");
    return FutureBuilder(
      future: comingMessages,
      builder: (context, snapshot) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
          ),
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
                TitleSearchBar(
                  leading: Leading(),
                ),
                ChatScreenTextField()
              ],
            ),
          ),
        );
      },
    );
  }
}
