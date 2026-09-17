import 'package:flutter/material.dart';

class LikeBtn extends StatefulWidget {
  const LikeBtn({super.key});

  @override
  State<LikeBtn> createState() => _LikeBtnState();
}

class _LikeBtnState extends State<LikeBtn> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
            child: Icon(
              //conditional operator to change the icon based on the isLiked state
              isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.red : Colors.grey,
              size: 100,
            ),
          ),
        ],
      ),
    );
  }
}
