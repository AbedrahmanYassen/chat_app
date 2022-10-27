import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import '../model/message.dart';

class ChatScreenProvider with ChangeNotifier {
  List<Message> listOfMessages = [];
  DatabaseReference database = FirebaseDatabase.instance.ref("/chats/05975018960595902228/");

  void loadMessages() {
    listOfMessages = <Message>[
      Message("Hello abood" ,"Ahmad", "12 bm"  ),
      Message("Hello Ahmad" ,  "abood" , "12 bm" ),
      Message("what are you doing here " ,  "Ahmad","12 bm" ),
      Message("Nothing just chilling, I just came from the university that is why I am chilling to study after that blah blah blah blah blah blah : " ,"abood",  "12 bm" , ),
      Message("Okay" , "Ahmad" ,"12 bm" , ),
      Message("Hello abood" ,"Ahmad", "12 bm"  ),
      Message("Hello Ahmad" ,  "abood" , "12 bm" ),
      Message("what are you doing here " ,  "Ahmad","12 bm" ),
      Message("Hello abood" ,"Ahmad", "12 bm"  ),
      Message("Hello Ahmad" ,  "abood" , "12 bm" ),
      Message("what are you doing here " ,  "Ahmad","12 bm" ),

    ];
  }

}
