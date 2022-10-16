
import 'package:flutter/material.dart';

import '../../../app/resources/color_manager.dart';
import '../../../app/resources/values_manager.dart';
import 'list_of_chats.dart';

class ChatsPart extends StatelessWidget {
  const ChatsPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.chatsPartColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(RadiusManager.r50),
            topRight: Radius.circular(RadiusManager.r50),
          ),
        ),
        child: const Center(
          child: ListOfChats(),
        ),
      ),
    );
  }
}
