import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/user_picture_data.dart';

class UserPicture extends StatelessWidget {
  final UserPictureData userPictureData;
  const UserPicture({Key? key, required this.userPictureData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: userPictureData.width.w,
      height: userPictureData.width.w,
      decoration: BoxDecoration(
        boxShadow: userPictureData.boxShadow,
        borderRadius:
            BorderRadius.all(Radius.circular(userPictureData.borderRadius)),
        image: DecorationImage(
          image: AssetImage(userPictureData.imageUrl),
        ),
      ),
    );
  }
}
