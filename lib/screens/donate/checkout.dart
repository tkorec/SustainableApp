import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';
import 'package:second_app/widgets/buttons.dart';
import 'package:second_app/widgets/appbar.dart';
import 'package:second_app/widgets/progressbar.dart';
import 'package:second_app/widgets/forms.dart';

class DonationCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        pageTitle: 'Checkout',
      ),
      body: Column(
        children: <Widget>[
          CustomProgressBar(imageSource: 'assets/images/progress_four.png'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: <Widget>[
                DonationFormFiled(labelText: 'Name'),
                SizedBox(height: 15.0),
                DonationFormFiled(labelText: 'Surname'),
                SizedBox(height: 15.0),
                DonationFormFiled(labelText: 'Phone number'),
                SizedBox(height: 15.0),
                DonationFormFiled(labelText: 'Address line 1'),
                SizedBox(height: 15.0),
                DonationFormFiled(labelText: 'Address line 2'),
                SizedBox(height: 15.0),
                DonationFormFiled(labelText: 'City'),
                SizedBox(height: 15.0),
                DonationFormFiled(labelText: 'Post Code'),
                SizedBox(height: 15.0),
              ],
            ),
          ),
          BlackButton(
            title: 'Complete order – £0',
            onPressed: () => Navigator.pushNamed(context,
                '/order-donation-bag/free-returns/points/checkout/donation-complete'),
            margin: EdgeInsets.all(40),
          ),
          SwizzlBottomNavigation(),
        ],
      ),
    );
  }
}
