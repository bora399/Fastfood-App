import 'package:flutter/material.dart';

class BasketCard extends StatelessWidget {
  String title;
  String description;
  int amount;
  BasketCard({Key key,this.title,this.description,this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      height: (108),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.white54,
          ),
          child: ListTile(
              title: Text(title,
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
                  ],
                ),
              ),

              subtitle: Text("${description} Amount : ${amount.toString()}",
                  style: themeData.textTheme.subtitle1)),
        ),
      ),
    );
  }
}
