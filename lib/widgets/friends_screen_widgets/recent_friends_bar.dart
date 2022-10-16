
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/resources/assets_manager.dart';
import '../../app/resources/color_manager.dart';
import '../../app/resources/font_manager.dart';
import '../../app/resources/strings-manager.dart';
import '../../app/resources/styles_manager.dart';

class RecentFriendsBar extends StatelessWidget {
  const RecentFriendsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //TODO : here another problem
      height: 112.w,
      child: Padding(
        //TODO:HARD CODED
        padding: EdgeInsets.only(
          top:  17.w,
          left:  25.w,
        ),
        child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context , index ){
          return const RecentFriendItem() ;
        },itemCount: 5,separatorBuilder: (context,index){
          //TODO: Changes must be made here
          return SizedBox(width:30.w,) ;
        },),
      ),
    );
  }
}

class RecentFriendItem extends StatelessWidget {
  const RecentFriendItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98.h,
      child: Column(
        //TODO:HARD CODED & temp data
        children: [
          Container(
            width: 65.w,
            height: 65.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  ImageAssets.testPicture,
                ),
              ),
            ),
          ),
          //TODO : TEMP DATA
          SizedBox(height: 9.h, ),
          Text(StringManager.name , style: getRegularStyle(color: ColorManager.white ,fontSize: FontSizeManger.s16),)

        ],
      ),
    );
  }
}
