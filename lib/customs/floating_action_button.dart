import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../main_files/basket_page.dart';
import '../main_files/hamburger_page.dart';

Widget FloatingButton(BuildContext context){
  return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder:(context) => BasketPage(listCard:listCard)));
      },
      backgroundColor: Color.fromRGBO(242, 19, 45, 1), //go basket page
      child: Icon(Icons.shopping_basket));
}