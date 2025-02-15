import 'package:flutter/material.dart';

class CustomTextError extends StatelessWidget {
  const CustomTextError({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: Center(child: Text(text)),
    );
  }
}
