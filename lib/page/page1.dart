import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home,
            size: 100.0,
            color: Colors.blue,
          ),
          SizedBox(height: 16.0),
          Text(
            'Welcome to Page 2',
          ),
        ],
      ),
    );
  }
}
