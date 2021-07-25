import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry margin;
  BlackButton({Key? key, required this.title, required this.onPressed, required this.margin}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(0, 0, 0, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70.0),
          ),
        ),
      ),
    );
  }
}
