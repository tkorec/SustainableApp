import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';
import 'package:second_app/widgets/buttons.dart';

class DonationComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Thank you for your \n purchase!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '2',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 200,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Days until you will \n receive your bag',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          BlackButton(
            title: 'Add another?',
            onPressed: () => Navigator.pushNamed(context, '/'),
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 40),
          ),
          SwizzlBottomNavigation(),
        ],
      ),
    );
  }
}
