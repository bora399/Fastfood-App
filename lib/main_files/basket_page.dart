import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/main_files/settings_page.dart';

import '../customs/BorderBox.dart';
import '../customs/basket_card.dart';
import '../utils/constants.dart';
import '../customs/drawer_page.dart';
import '../customs/floating_action_button.dart';
import '../utils/widget_functions.dart';
import 'hamburger_page.dart';

class BasketPage extends StatefulWidget {
  List<BasketCard> listCard;

  BasketPage({Key key,
    this.listCard,
  }) : super(key: key);

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor:BACKGROUND_BLACK,
      key: scaffoldKey,
      endDrawer: DrawerPage(),
      drawer: DrawerPage(),
      body:SafeArea(
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SettingsPage()));
                      },
                      icon: Icon(Icons.settings, color: COLOR_WHITE),
                    ),
                  ),
                ],
              ),
            ),
            addVerticalSpace(size.width / 6.5),
            Flexible(
              child: ListView.builder(
                  itemCount:widget.listCard.length,
                  itemBuilder: (BuildContext context, int index) {
                    return widget.listCard[index];
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
