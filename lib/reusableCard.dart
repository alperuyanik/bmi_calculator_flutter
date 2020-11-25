import 'package:flutter/material.dart';
import 'iconContent.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.renk, this.cardChild});

  final Color renk;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: renk,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
