import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';

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
                  SizedBox(height: 30,),
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
          
          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 40.0),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: Text(
                'Add another?',
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
          ),
          SwizzlBottomNavigation(),
        ],
      ),
    );
  }
}
