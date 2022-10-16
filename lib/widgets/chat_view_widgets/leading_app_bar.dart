import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/resources/assets_manager.dart';
import '../../app/resources/color_manager.dart';
import '../../app/resources/font_manager.dart';
import '../../app/resources/strings-manager.dart';
import '../../app/resources/styles_manager.dart';
import '../../app/resources/values_manager.dart';
import '../../model/user_picture_data.dart';
import '../friends_screen_widgets/chats_part/user_picture.dart';



class Leading extends StatelessWidget {
  const Leading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //TODO : TEMP DATA
        UserPicture(
          userPictureData: UserPictureData(
            width: 44,
            imageUrl: ImageAssets.testPicture,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(4, 4),
                  blurRadius: RadiusManager.r30,
                  color: ColorManager.blackWith45Transperncy)
            ],
            borderRadius: RadiusManager.r30,
            height: 00,
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Text(
          StringManager.name,
          style: getSemiBoldStyle(
            color: ColorManager.white,
            fontSize: FontSizeManger.s20,
          ),
        ),
      ],
    );
  }
}
