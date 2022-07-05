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

class PizzaPage extends StatefulWidget {
  PizzaPage({Key key,
  }) : super(key: key);

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  int amountPizza = 1;

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
                Image.asset("assets/images/image_2.png",
                    width: (size.width / 0.7), height: (size.height / 3.5)),
                Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 8.0, horizontal: 21.0),
                  child: Column(
                    children: [
                      Center(
                          child: Text(
                              "This is a basic hamburger that includes 200 gr of meat, burger sauce, cheddars and lettuces",
                              style: themeData.textTheme.headline6)),
                      addVerticalSpace(20),
                      Text("Sauce : Pizza Sauce",
                          style: themeData.textTheme.headline5),
                      addVerticalSpace(15),
                      Center(
                        child: Text("Ingredients : Sausage,pepperoni,mozzarella cheese",
                            style: themeData.textTheme.headline6),
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
              child: Text("Amount : 8€", style: themeData.textTheme.headline5),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {
                  if(money2 >= 8){
                    setState((){
                      money2 -= 8;
                      if(listCard.contains(BasketCard(title:"Pizza",description:"This is a basic pizza that includes pizza sauce, sausage,pepperoni and mozzarella cheese",amount:amountPizza))){
                        setState((){
                          amountPizza+=1;
                        });
                      }
                      else {
                        listCard.add(BasketCard(title: "Pizza",
                            description: "This is a basic pizza that includes pizza sauce, sausage,pepperoni and mozzarella cheese",
                            amount: amountPizza));
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
