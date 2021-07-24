import 'package:flutter/material.dart';
import 'package:second_app/screens/donate/whatWeAccept.dart';
import 'package:second_app/navigation/navigation.dart';
import 'package:second_app/screens/donate/freeReturns.dart';
import 'package:second_app/screens/donate/points.dart';
import 'package:second_app/screens/donate/checkout.dart';
import 'package:second_app/screens/donate/donationComplete.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => DonatePage(),
        '/order-donation-bag': (context) => OurStepper(),
        '/order-donation-bag/free-returns': (context) => FreeReturns(),
        '/order-donation-bag/free-returns/points': (context) => DonateForPoints(),
        '/order-donation-bag/free-returns/points/checkout': (context) => DonationCheckout(),
        '/order-donation-bag/free-returns/points/checkout/donation-complete': (context) => DonationComplete(),
      },
    );
  }
}



class OurStepper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          'Marketplace',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text('Marketplace'),
            ),
          ),
          SwizzlBottomNavigation(),
        ],
      ),
    );
  }
}


