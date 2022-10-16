import 'package:flutter/material.dart';

import '../model/message.dart';

class ChatScreenProvider with ChangeNotifier {
  List<Message> listOfMessages = [];
  void loadMessages() {
    listOfMessages.add(Message(
        "Abdulrahman", "Fuck you", "${DateTime.now()}", "+970597501896"));
  }

}
