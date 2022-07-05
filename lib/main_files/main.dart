import 'dart:ui';
import 'package:shop_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Shop App",
      theme:ThemeData(primaryColor:COLOR_WHITE,textTheme:screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,fontFamily:"Montserrat"),
      home:LoginPage(),
    );
  }
}





