import 'package:chat_app/app/resources/color_manager.dart';
import 'package:chat_app/app/resources/font_manager.dart';
import 'package:chat_app/app/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: OTPTextField(
          length: 4,
          width: MediaQuery.of(context).size.width.w,
          fieldWidth: 70,
          style: getSemiBoldMulishStyle(
              color: Colors.black, fontSize: FontSizeManger.s15,),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldStyle: FieldStyle.box,
          otpFieldStyle: OtpFieldStyle(
            enabledBorderColor: ColorManager.medGrey,
            focusBorderColor: ColorManager.medGrey,

          ),
          onCompleted: (pin) {
            print("Completed: $pin");
          },
        ),
      ),
    );
  }
}
