import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';

class FreeReturns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          'Free returns',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/images/progress_two.png',
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Use prepaid label',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'In the bag you will find a prepaid return \n label. Drop it off at any post office',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/free_returns.png',
            width: 300,
            height: 300,
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
            child: Text(
              'Find your nearest post office',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            onPressed: () {},
          ),
          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.all(40.0),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                  context, '/order-donation-bag/free-returns/points'),
              child: Text(
                "Continue",
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
