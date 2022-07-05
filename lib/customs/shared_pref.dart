import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService{
  String username2 = "";
  Future saveString(String username)async{
    final preferences = await SharedPreferences.getInstance();

    await preferences.setString("username",username);

    print("Saved Settings!");
  }

  Future getString()async{
    final preferences = await SharedPreferences.getInstance();
    username2 = preferences.getString("username");
  }
}