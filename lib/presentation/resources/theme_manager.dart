import 'package:chat_app/presentation/resources/color_manager.dart';
import 'package:chat_app/presentation/resources/font_manager.dart';
import 'package:chat_app/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primaryColor,
    // primaryColorLight: ColorMan
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.lightGrey,
    iconTheme: IconThemeData(
      color: ColorManager.white ,
      //TODO: This is hard coded
      size: 28 ,
    ),
    // TODO: make it hard coded if necessary
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(8),
      hintStyle: getSemiBoldMulishStyle(
          color: ColorManager.whiteWith58Transperncy, fontSize: FontSizeManger.s13),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
    ),
  );
}
