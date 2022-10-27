
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/resources/color_manager.dart';
import '../app/resources/strings-manager.dart';
import '../widgets/friends_screen_widgets/Title_search_bar.dart';
import '../widgets/friends_screen_widgets/chats_part/chats_part.dart';
import '../widgets/friends_screen_widgets/recent_friends_bar.dart';


class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              //TODO: HC
              padding: EdgeInsets.only(
                //TODO: TEMP DATA
                top: 66.h,
                bottom: 9.h ,
              ),
              child: TitleSearchBar(
                leading: Text(
                  StringManager.titleUsersScreen,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  //TODO: TEMP DATA
                  width: 25.w ,
                ),
                Text(
                  StringManager.subtitleUsersScreen,
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
            const RecentFriendsBar(),
            //TODO:temp data
            SizedBox(
              height: 25.w,
            ),
            const ChatsPart()
          ],
        ),
      ),
    );
  }
}
