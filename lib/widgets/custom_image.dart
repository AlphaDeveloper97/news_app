import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.image});
  final String? image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: image != null && Uri.tryParse(image!)?.hasAbsolutePath == true
            ? Image.network(
                (image!),
                height: 200,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              )
            : Image.asset(
                "assets/General.jpeg",
                height: 200,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ));
  }
}
