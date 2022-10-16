import 'package:flutter/material.dart';
import 'package:chat_app/app/resources/color_manager.dart';
import 'package:chat_app/app/resources/styles_manager.dart';
import 'package:chat_app/app/resources/font_manager.dart';
ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primaryColor,
    // primaryColorLight: ColorMan
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.lightGrey,
    iconTheme: IconThemeData(
      color: ColorManager.white,
      //TODO: This is hard coded
      size: 28,
    ),
    textTheme: TextTheme(
      titleLarge: getSemiBoldStyle(
          color: ColorManager.white, fontSize: FontSizeManger.s28,),
      //TODO:I need to change to medium
      titleMedium: getRegularStyle(
        color: ColorManager.whiteWith58Transperncy,
        fontSize: FontSizeManger.s13,
      ),
      // titleSmall: getSemiBoldStyle(color: ColorManager.white , fontSize: FontSizeManger.s15) ,
      // subtitle2: getRegularStyle(color: ColorManager.lightGrey, fontSize: FontSizeManger.s14),
    ),
    // TODO: make it hard coded if necessary
    inputDecorationTheme: InputDecorationTheme(
      // contentPadding: const EdgeInsets.all(8),
      hintStyle: getSemiBoldMulishStyle(
          color: ColorManager.whiteWith58Transperncy,
          fontSize: FontSizeManger.s13,
      ),
      focusedBorder:  OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        borderSide: BorderSide(color: ColorManager.textFieldMessagesSenderColor)
      ),
      enabledBorder:  OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        borderSide: BorderSide(color: ColorManager.textFieldMessagesSenderColor),
      ),
    ),
  );
}
