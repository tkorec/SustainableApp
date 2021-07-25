import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final String imageSource;
  CustomProgressBar({Key? key, required this.imageSource}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(imageSource),
          ],
        ),
      ),
    );
  }
}
