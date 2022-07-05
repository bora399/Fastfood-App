import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main_files/home_page.dart';
import '../utils/constants.dart';

showAlertDialog(BuildContext context) {
  final ThemeData themeData = Theme.of(context);
  TextEditingController moneyController = TextEditingController();

  AlertDialog alert = AlertDialog(
    title: Text("Add Money"),
    content: Text("How much money you want to add?"),
    actions: [
      TextField(
        style:themeData.textTheme.bodyText2,
        keyboardType: TextInputType.number,
        controller:moneyController,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide:BorderSide(color:COLOR_BLACK)

          ),
          focusedBorder:OutlineInputBorder(
              borderSide:BorderSide(color:COLOR_BLACK)
          ),
        ),
      ),
      TextButton(
        child: Text("Add",style:themeData.textTheme.bodyText2),
        onPressed: () {
          int newMoney = int.parse(moneyController.text);
          money2 += newMoney;
          Navigator.pop(context);
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}