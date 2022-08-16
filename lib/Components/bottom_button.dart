import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.title, required this.onPress});

  final Function onPress;
  final Text title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        child: Center(child: title),
        width: double.infinity,
        height: bottomBarHeight,
        color: kBottomBarColour,
        margin: EdgeInsets.only(top: 15.0),
      ),
    );
  }
}
