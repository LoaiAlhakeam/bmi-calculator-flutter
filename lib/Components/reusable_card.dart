import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.color, required this.cardChild, required this.onTap});

  final Color color;
  final Widget cardChild;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap!(),
      child: Container(
        margin: EdgeInsets.all(15.0),
        height: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
