
import 'package:chat_app/widgets/friends_screen_widgets/chats_part/user_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/font_manager.dart';
import '../../../app/resources/strings-manager.dart';
import '../../../app/resources/styles_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../../model/user_picture_data.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LeftPartOfTheChatItem(),
          Text(
            StringManager.timeLastMessage,
            style: getRegularStyle(
                color: ColorManager.lightGrey, fontSize: FontSizeManger.s14),
          ),
        ],
      ),
    );
  }
}

//Tiny cute little widgets
class LeftPartOfTheChatItem extends StatelessWidget {
  const LeftPartOfTheChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserPicture(
          userPictureData: UserPictureData(
              height: 51.79,
              borderRadius: RadiusManager.r30,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(4, 4),
                    blurRadius: 25,
                    color: ColorManager.blackWith45Transperncy)
              ],
              imageUrl: ImageAssets.testPicture,
              width: 51.79),
        ),
        SizedBox(
          width: 18.3.w,
        ),
        const NameAndLastMessageWidget()
      ],
    );
  }
}

class NameAndLastMessageWidget extends StatelessWidget {
  const NameAndLastMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //TODO: HERE I DIDN'T USED A THEME
        Text(
          StringManager.name,
          style: getSemiBoldStyle(
              color: ColorManager.white, fontSize: FontSizeManger.s15),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          StringManager.testMessage,
          style: getRegularStyle(
              color: ColorManager.lightGrey, fontSize: FontSizeManger.s14),
        ),
      ],
    );
  }
}
