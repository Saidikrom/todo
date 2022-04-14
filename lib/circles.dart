// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  Color myColor;
  VoidCallback onCirclePressed;

  ColorCircle({Key? key, required this.myColor, required this.onCirclePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onCirclePressed,
      icon: Icon(
        Icons.circle,
        color: myColor,
      ),
      iconSize: 50,
    );
  }
}
