import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/main_files/settings_page.dart';

import '../customs/BorderBox.dart';
import '../customs/basket_card.dart';
import '../customs/card_page.dart';
import '../customs/drawer_page.dart';
import '../utils/constants.dart';
import '../utils/widget_functions.dart';
import 'hamburger_page.dart';
import 'home_page.dart';

class CookiesPage extends StatefulWidget {


  CookiesPage({Key key,
  }) : super(key: key);

  @override
  State<CookiesPage> createState() => _CookiesPageState();
}

class _CookiesPageState extends State<CookiesPage> {
  int amountCookies = 1;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: BACKGROUND_BLACK,
      key: scaffoldKey,
      endDrawer: DrawerPage(),
      drawer: DrawerPage(),
      body: SafeArea(
        child: Column(
          children: [
            addVerticalSpace(15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderBox(
                    child: IconButton(
                      onPressed: () {
                        scaffoldKey.currentState.openDrawer();
                      },
                      icon: Icon(Icons.menu, color: COLOR_WHITE),
                    ),
                  ),
                  BorderBox(
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingsPage()));
                      },
                      icon: Icon(Icons.settings, color: COLOR_WHITE),
                    ),
                  ),
                ],
              ),
            ),
            addVerticalSpace(size.width / 6.5),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/image_4.png",
                    width: (size.width / 1), height: (size.height / 4)),
                Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 8.0, horizontal: 21.0),
                  child: Column(
                    children: [
                      Center(
                          child: Text(
                              "These are basic cookies that includes basic cookie ingredients",
                              style: themeData.textTheme.headline6)),
                      addVerticalSpace(20),
                      Text("Piece : 8",
                          style: themeData.textTheme.headline5),
                      addVerticalSpace(15),
                      Center(
                        child: Text("Ingredients : basic cookie ingredients",
                            style: themeData.textTheme.headline5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: COLOR_RED,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Amount : 3", style: themeData.textTheme.headline5),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {
                  if(money2 >= 3){
                    setState((){
                      money2 -= 3;
                      if(listCard.contains(BasketCard(title:"Cookies",description:"These are basic cookies that include basic cookie ingredients",amount:amountCookies))){
                      setState((){
                        amountCookies+=1;
                      });
                      }
                      else {
                        listCard.add(BasketCard(title: "Cookies",
                            description: "These are basic cookies that include basic cookie ingredients",
                            amount: amountCookies));
                      }
                    });
                    print("Added!");
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),shadowColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor:MaterialStateProperty.all(COLOR_WHITE),
                  overlayColor: MaterialStateProperty.all(COLOR_WHITE),
                ),
                child:
                Text("Add To Basket", style: themeData.textTheme.subtitle2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
