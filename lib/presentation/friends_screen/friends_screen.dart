import 'package:chat_app/presentation/friends_screen/friends_screen_widgets/Title_search_bar.dart';
import 'package:chat_app/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(children: const [
          SizedBox(height: 66,),
          TitleSearchBar(),
        ],),
      ),
    );
  }
}
