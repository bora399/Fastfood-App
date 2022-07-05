import 'package:flutter/material.dart';

import '../customs/BorderBox.dart';
import '../utils/constants.dart';
import '../customs/drawer_page.dart';
import '../customs/floating_action_button.dart';
import '../utils/widget_functions.dart';

class SettingsPage extends StatelessWidget {

  SettingsPage({Key key,
  }) : super(key: key);

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
        child:Column(
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
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingButton(context),
    );
  }
}
