import 'package:flutter/material.dart';

Widget signInMethods({
  String text,
  Color color,
  FontWeight fontWeight: FontWeight.bold,
  String image: 'Assets/Images/facebook-logo.png', //! This need to change
  Padding padding,
  double opacityVal: 1,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Opacity(
            opacity: opacityVal,
            child: Image.asset(image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18.0, fontWeight: FontWeight.w500, color: color),
          ),
        ),
      ],
    ),
  );
}
