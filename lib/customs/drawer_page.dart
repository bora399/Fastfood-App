import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/customs/shared_pref.dart';
import 'package:shop_app/customs/show_alert_dialog.dart';
import 'package:shop_app/utils/constants.dart';
import 'package:shop_app/utils/widget_functions.dart';
import '../main_files/home_page.dart';
import '../main_files/settings_page.dart';
import 'card_page.dart';
import '../main_files/favorites.dart';
import 'package:shared_preferences/shared_preferences.dart';


class DrawerPage extends StatefulWidget {
  String username = "";
  int money = 0;

  DrawerPage({Key key,
  this.username,this.money,
  }) : super(key: key);


  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final _key = GlobalKey();

    List<CardPage> cardList = [];


    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            key:_key,
            decoration: BoxDecoration(
                color: Colors.green,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username2,
                  style: themeData.textTheme.headline4,
                ),
                addVerticalSpace(20),
                Text(
                  "WALLET",
                  style: themeData.textTheme.headline5,
                ),
                Text(
                  money2.toString(),
                  style: themeData.textTheme.headline6,
                ),
              ],
            ),

          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome Page',style:TextStyle(
                color:Color.fromRGBO(74, 79, 76,1),fontSize:18,fontWeight:FontWeight.w500,height:1.5
            ),
            ),
            onTap: () => {
              Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites',style:TextStyle(
                color:Color.fromRGBO(74, 79, 76,1),fontSize:18,fontWeight:FontWeight.w500,height:1.5
            ),
            ),
            onTap: (){
              if(controller1) {
                cardList.add(CardPage(title:"Hamburger",description:"This is a basic hamburger that includes 200 gr of meat, burger sauce, cheddars and lettuces"));
              }
              if(controller2){
                cardList.add(CardPage(title:"Pizza",description:"This is a basic pizza that includes pizza sauce, sausage,pepperoni and mozzarella cheese"));
              }
              if(controller3){
                cardList.add(CardPage(title:"Hot Dog",description:"This is a basic hot dog that includes ketchup,mayonnaise and sausage"));
              }
              if(controller4){
                cardList.add(CardPage(title:"Cookies",description:"These are basic cookies that includes basic cookie ingredients"));
              }
              Navigator.push(context,MaterialPageRoute(builder:(context)=>FavoritesPage(cardList:cardList)));
            },
          ),
          ListTile(
            leading: Icon(Icons.euro),
            title: Text('Add Money',style:TextStyle(
                color:Color.fromRGBO(74, 79, 76,1),fontSize:18,fontWeight:FontWeight.w500,height:1.5
            ),
            ),
            onTap: () => {
            showAlertDialog(context)
          },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings',style:TextStyle(
                color:Color.fromRGBO(74, 79, 76,1),fontSize:18,fontWeight:FontWeight.w500,height:1.5
            ),
            ),
            onTap: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => SettingsPage()))},
          ),
        ],
      ),
    );
  }
}