import 'package:flutter/material.dart';

import '../utils/constants.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width,height;

  const BorderBox({Key key,
    this.padding,
    this.width,
    this.height,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      height:height,
      decoration:BoxDecoration(
        color:Color.fromRGBO(242, 19, 45, 1),
        borderRadius:BorderRadius.circular(14),
        border:Border.all(color:COLOR_GREY.withAlpha(40),width:2)
      ),
      padding: padding?? const EdgeInsets.all(6.0),
      child:Center(child:child),
    );
  }
}
