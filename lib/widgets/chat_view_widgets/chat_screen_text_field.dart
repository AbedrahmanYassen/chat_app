import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/resources/assets_manager.dart';
import '../../app/resources/color_manager.dart';
import '../../app/resources/strings-manager.dart';
import '../../app/resources/values_manager.dart';
import '../../webservices/messages_api.dart';

class ChatScreenTextField extends StatelessWidget {
  const ChatScreenTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        width: 376.w,
        decoration: BoxDecoration(
          color: ColorManager.textFieldMessagesSenderColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(RadiusManager.r25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 6.h, bottom: 7.h),
              child: Container(
                width: 33.w,
                height: 33.w,
                decoration: BoxDecoration(
                  color: ColorManager.grey2,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon:
                      // Padding(
                      // padding: EdgeInsets.only(
                      //     top: 8.5.h, bottom: 6.5.h, left: 7.5.w, right: 9.5.w),
                      Image.asset(
                    "assets/images/camera_icon.png",
                    fit: BoxFit.fitWidth,
                  ),
                  // ),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: StringManager.message,
                  hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      ImageAssets.sendIcon,
                      // width: 18.w,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
        );
  }
}
