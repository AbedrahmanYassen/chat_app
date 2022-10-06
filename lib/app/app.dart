import 'package:chat_app/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: ColorManager.primaryColor,
              height: 100,
            ),
            Container(
              color: ColorManager.friendsListColor,
              height: 100,
            ),

          ],
        ),
      ),
    );
  }
}
