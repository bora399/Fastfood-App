import 'package:flutter/material.dart';

const COLOR_BLACK = Color.fromRGBO(48,47,48,1.0);
const COLOR_GREY = Color.fromRGBO(141,141,141,1.0);
Color COLOR_RED = Color.fromRGBO(242, 19, 45, 1);
Color BACKGROUND_BLACK = Color.fromRGBO(38, 35, 35,1);
const COLOR_WHITE = Colors.white;

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1:TextStyle(
    color:COLOR_BLACK,fontWeight:FontWeight.w700, fontSize:26
  ),
  headline2:TextStyle(
    color:COLOR_BLACK,fontWeight:FontWeight.w700, fontSize:22
  ),
  headline3:TextStyle(
    color:COLOR_BLACK,fontWeight:FontWeight.w700, fontSize:20
  ),
  headline4:TextStyle(
    color:COLOR_WHITE,fontWeight:FontWeight.w800,fontSize:42,
  ),
  headline5:TextStyle(
    color:COLOR_WHITE,fontWeight:FontWeight.w500,fontSize:25,
  ),
  headline6:TextStyle(
    color:COLOR_WHITE,fontWeight:FontWeight.w400,fontSize:17,
  ),
  bodyText1:TextStyle(
    color:COLOR_BLACK,fontSize:14,fontWeight:FontWeight.w500,height:1.5
  ),
  bodyText2:TextStyle(
      color:COLOR_BLACK,fontSize:16,fontWeight:FontWeight.w500,height:1.5
  ),
  subtitle1:TextStyle(
      color:COLOR_BLACK,fontSize:15,fontWeight:FontWeight.w400
  ),
  subtitle2: TextStyle(
    color:COLOR_BLACK,fontWeight:FontWeight.w400,fontSize:17,
  ),
);

const TextTheme TEXT_THEME_SMALL = TextTheme(
  headline1:TextStyle(
      color:COLOR_BLACK,fontWeight:FontWeight.w700, fontSize:22
  ),
  headline2:TextStyle(
      color:COLOR_BLACK,fontWeight:FontWeight.w700, fontSize:18
  ),
  headline3:TextStyle(
      color:COLOR_BLACK,fontWeight:FontWeight.w700, fontSize:16
  ),
  bodyText1:TextStyle(
      color:COLOR_BLACK,fontSize:10,fontWeight:FontWeight.w500,height:1.5
  ),
  bodyText2:TextStyle(
      color:COLOR_GREY,fontSize:8,fontWeight:FontWeight.w500,height:1.5
  ),
  subtitle1:TextStyle(
      color:COLOR_BLACK,fontSize:8,fontWeight:FontWeight.w400
  ),
);
