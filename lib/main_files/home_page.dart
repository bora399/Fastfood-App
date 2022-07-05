import 'package:flutter/material.dart';
import 'package:shop_app/customs/BorderBox.dart';
import 'package:shop_app/main_files/pizza_page.dart';
import 'package:shop_app/main_files/settings_page.dart';
import 'package:shop_app/utils/constants.dart';
import 'package:shop_app/utils/widget_functions.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../customs/drawer_page.dart';
import '../customs/floating_action_button.dart';
import '../customs/shared_pref.dart';
import 'cookies.dart';
import 'hamburger_page.dart';
import 'hot_dog.dart';

class HomePage extends StatefulWidget {
  String username;
  int money;

  HomePage({Key key,
    this.username,this.money
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

  SharedPreferences _prefs;
  final _preferencesService = PreferencesService();
  bool controller1 = false;
  bool controller2 = false;
  bool controller3 = false;
  bool controller4 = false;
  String username2;
  int money2 = 0;




class _HomePageState extends State<HomePage> {

  Future<void> readySharedPreferences() async{
    var sharedPreferences = await SharedPreferences.getInstance();
    username2 = sharedPreferences.getString("username");
    money2 = sharedPreferences.getInt("money");
    setState(() {
      saveData();
    });
  }

  Future<void> saveData() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    if(widget.username != null){
      username2 = widget.username;
    }
    if(widget.money != null && money2 == 0){
      money2 = widget.money;
    }
    sharedPreferences.setString("username", username2);
    sharedPreferences.setInt("money",money2);
  }


  @override
  void initState(){
    super.initState();
    readySharedPreferences();

  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 15.0;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        endDrawer: DrawerPage(),
        drawer: DrawerPage(),
        backgroundColor: BACKGROUND_BLACK,
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
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
                child: ListView(
                  children: [
                    Container(
                      height: (108),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>HamburgerPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white54,
                          ),
                          child: ListTile(
                              title: Text("Hamburger",
                                  style: themeData.textTheme.headline2),
                              trailing: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Wrap(
                                  spacing: 6,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.fastfood, size: 25),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState((){
                                          controller1 = !controller1;
                                        });
                                      },
                                      icon: Icon(Icons.favorite, size: 25,color:controller1?COLOR_RED:COLOR_GREY),
                                    ),
                                  ],
                                ),
                              ),
                              subtitle: Text("This is a basic hamburger that includes 200 gr of meat, burger sauce, cheddars and lettuces",
                                  style: themeData.textTheme.subtitle1)),
                        ),
                      ),
                    ),
                    Container(
                      height: (108),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>PizzaPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white54,
                          ),
                          child: ListTile(
                              title: Text("Pizza",
                                  style: themeData.textTheme.headline2),
                              trailing: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Wrap(
                                  spacing: 6,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.fastfood, size: 25),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState((){
                                          controller2 = !controller2;
                                        });
                                      },
                                      icon: Icon(Icons.favorite, size: 25,color:controller2?COLOR_RED:COLOR_GREY),
                                    ),
                                  ],
                                ),
                              ),
                              subtitle: Text("This is a basic pizza that includes pizza sauce, sausage,pepperoni and mozzarella cheese",
                                  style: themeData.textTheme.subtitle1)),
                        ),
                      ),
                    ),
                    Container(
                      height: (108),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>HotDogPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white54,
                          ),
                          child: ListTile(
                              title: Text("Hot Dog",
                                  style: themeData.textTheme.headline2),
                              trailing: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Wrap(
                                  spacing: 6,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.fastfood, size: 25),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState((){
                                          controller3 = !controller3;
                                        });
                                      },
                                      icon: Icon(Icons.favorite, size: 25,color:controller3?COLOR_RED:COLOR_GREY),
                                    ),
                                  ],
                                ),
                              ),
                              subtitle: Text("This is a basic hot dog that includes ketchup,mayonnaise and sausage",
                                  style: themeData.textTheme.subtitle1)),
                        ),
                      ),
                    ),
                    Container(
                      height: (108),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder:(context)=> CookiesPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white54,
                          ),
                          child: ListTile(
                              title: Text("Cookies",
                                  style: themeData.textTheme.headline2),
                              trailing: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Wrap(
                                  spacing: 6,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.fastfood, size: 25),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState((){
                                          controller4 = !controller4;
                                        });
                                      },
                                      icon: Icon(Icons.favorite, size: 25,color:controller4?COLOR_RED:COLOR_GREY),
                                    ),
                                  ],
                                ),
                              ),
                              subtitle: Text("These are basic cookies that includes basic cookie ingredients",
                                  style: themeData.textTheme.subtitle1)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingButton(context),
      ),
    );
  }
}
