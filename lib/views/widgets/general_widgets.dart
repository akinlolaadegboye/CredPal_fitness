import 'dart:ui';
import 'package:flutter/material.dart';

class GeneralWidgets{
  customTextView(String textTitle,Color textColor,double fontSize,FontWeight fontWeight){
    return Text(textTitle,style: TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),);
  }
}