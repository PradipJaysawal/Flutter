import 'package:flutter/material.dart';

class Titlecard extends StatelessWidget {
  String? title;
  Titlecard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.pink.shade100, // Add some spacing at the top
      ),
      child: Text(
        title!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
