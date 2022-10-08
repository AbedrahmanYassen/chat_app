import 'package:chat_app/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double size , Color color , FontWeight fontWeight){
  return  TextStyle(
    fontSize: size ,
    fontWeight: fontWeight ,
    color: color,
    fontFamily: FontsConstants.fontFamilyPoppins ,
  );
}
TextStyle _getMulishTextStyle(double size , Color color , FontWeight fontWeight){
  return  TextStyle(
    fontSize: size ,
    fontWeight: fontWeight ,
    color: color,
    fontFamily: FontsConstants.fontFamilyMulish ,
  );
}
TextStyle getRegularStyle({double fontSize = FontSizeManger.s13 ,required Color color }){
  return _getTextStyle(fontSize , color , FontWeightManager.regular);
}


TextStyle getSemiBoldStyle({double fontSize = FontSizeManger.s13 ,required Color color }){
  return _getTextStyle(fontSize , color , FontWeightManager.semiBold);
}

TextStyle getSemiBoldMulishStyle({double fontSize = FontSizeManger.s13 ,required Color color }){
  return _getMulishTextStyle(fontSize , color , FontWeightManager.semiBold);

}