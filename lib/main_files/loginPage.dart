import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:numberpicker/numberpicker.dart';

import '../customs/shared_pref.dart';
import '../utils/constants.dart';
import '../utils/widget_functions.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  FocusNode focusNode = FocusNode();
  @override
  void dispose(){
    focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    final ThemeData themeData = Theme.of(context);
    TextEditingController loginController = TextEditingController();
    TextEditingController moneyController = TextEditingController();
    int _value = 0;



    return Scaffold(
      key: scaffoldKey,
      backgroundColor:BACKGROUND_BLACK,
      body:SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                focusNode:focusNode,
                style:themeData.textTheme.headline6,
                controller:loginController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:BorderSide(color:COLOR_WHITE)

                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide:BorderSide(color:COLOR_WHITE)
                  ),
                  hintText: 'Write Your Name:',hintStyle: themeData.textTheme.headline6,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: NumberPicker(
                value: _value,
                minValue: 0,
                maxValue: 100,
                axis: Axis.horizontal,
                step:5,
                onChanged: (value) => setState(() => _value = value),
              ),
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:8,vertical:4),
              child:Text(
                "Choose Your Money",style:themeData.textTheme.headline6,
              ),
            ),
            addVerticalSpace(25),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:15,vertical:8),
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(COLOR_RED),
                ),
                onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage(username:loginController.text,money:_value)));
                }, child: Text("Login",style:themeData.textTheme.headline6),

              ),
            )
          ],
        ),
      ),
    );
  }
}
