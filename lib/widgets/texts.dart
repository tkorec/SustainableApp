import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String boldTextTitle;
  BoldText({Key? key, required this.boldTextTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      boldTextTitle,
      style: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SecondText extends StatelessWidget {
  final String secondTextTitle;
  SecondText({Key? key, required this.secondTextTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      secondTextTitle,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
      ),
    );
  }
}
