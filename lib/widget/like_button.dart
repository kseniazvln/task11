import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  final bool isLiked;
  final Function(bool) onPressed;

  LikeButton({required this.isLiked, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed(!isLiked);
      },
      child: Container(
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(8.0),
        child: Icon(
          isLiked ? Icons.favorite : Icons.favorite_border,
          color: isLiked ? Colors.red : Colors.grey,
        ),
      ),
    );
  }
}
