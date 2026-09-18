import 'package:flutter/material.dart';

class Cousrecard extends StatelessWidget {
  String? imageUrl;
  String? courseTitle;
  Cousrecard({super.key, required this.imageUrl, required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 140,
        child: Column(
          children: [
            Image.network(imageUrl!, height: 100, width: 140),
            Text(
              courseTitle!,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
