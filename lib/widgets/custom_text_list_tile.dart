import 'package:flutter/material.dart';

class CustomTextListTile extends StatelessWidget {
  const CustomTextListTile(
      {super.key,
      required this.text,
      required this.fontSize,
      this.fontWeight,
      required this.color});
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
