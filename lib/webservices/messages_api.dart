import 'dart:async';
import 'dart:convert';

import 'package:chat_app/app/general/base_urls_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../model/message.dart';

class MessagesRequest  {
  static Stream<QuerySnapshot<Map<String, dynamic>>> getMessages() => FirebaseFirestore.instance.collection("messages").snapshots();


}
//05975018960595902228

