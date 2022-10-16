import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'chat_item.dart';

class ListOfChats extends StatelessWidget {
  const ListOfChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 379.w,
      //TODO: HARD CODED AND NOT CORRECT
      height: 480.h,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return const ChatItem();
        },
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 30.6.h,
          );
        },
      ),
    );
  }
}
