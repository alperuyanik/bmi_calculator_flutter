import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.myText, this.myIcon});

  final String myText;
  final Widget myIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        myIcon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          myText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
