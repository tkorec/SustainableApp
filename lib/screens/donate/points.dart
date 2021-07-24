import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';

class DonateForPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          'Points',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/images/progress_three.png'),
                ],
              ),
            ),
          ),
          Text(
            'The drop',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'When we sell your donation you will \n receive points',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/drop_image.png',
            height: 200,
            width: 200,
          ),
          Text(
            'Recycling',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Even if your donations get recycled you \n still will gain points',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Image.asset(
            'assets/images/recycling_image.png',
            height: 200,
            width: 200,
          ),
          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 40, left: 40, right: 40),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                  context, '/order-donation-bag/free-returns/points/checkout'),
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
