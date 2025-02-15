import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "News",
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
          ),
        ),
        Text(
          "Cloud",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 27,
          ),
        ),
      ],
    );
  }
}
