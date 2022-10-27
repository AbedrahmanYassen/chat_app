import 'package:chat_app/app/resources/color_manager.dart';
import 'package:chat_app/app/resources/font_manager.dart';
import 'package:chat_app/app/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 25.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/login-logo.gif",
                width: 300.w,
                height: 300.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter your mobile number ",
                    style: getSemiBoldStyle(
                      color: const Color(
                        0xff66646f,
                      ),
                      fontSize: FontSizeManger.s20,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  PhoneNumberPickerWidget(),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 65.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.medGrey),
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: getSemiBoldStyle(
                        color: Colors.white, fontSize: FontSizeManger.s20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhoneNumberPickerWidget extends StatelessWidget {
  PhoneNumberPickerWidget({Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'PS';
  PhoneNumber number = PhoneNumber(isoCode: 'PS');

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) {
        print(number.phoneNumber);
      },
      onInputValidated: (bool value) {
        print(value);
      },
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.DROPDOWN,
        showFlags: true,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: TextStyle(color: Colors.black),
      initialValue: number,
      textFieldController: controller,
      formatInput: false,
      cursorColor: ColorManager.black,
      countries: const ['PS', 'US', 'EG'],
      textStyle: getSemiBoldMulishStyle(
          color: ColorManager.black, fontSize: FontSizeManger.s20),
      keyboardType:
          const TextInputType.numberWithOptions(signed: true, decimal: true),
      inputBorder: const UnderlineInputBorder(),
      inputDecoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(),
        focusedBorder: UnderlineInputBorder(),
      ),
      onSaved: (PhoneNumber number) {
        print('On Saved: $number');
      },
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');
  }
}
