import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontWeight = FontWeight.w400,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;

  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          height: 1.5,
          color: color,
          fontWeight: fontWeight),
    );
  }
}
