import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';
import 'package:second_app/widgets/buttons.dart';
import 'package:second_app/widgets/appbar.dart';
import 'package:second_app/widgets/progressbar.dart';
import 'package:second_app/widgets/texts.dart';

class FreeReturns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        pageTitle: 'Free returns',
      ),
      body: Column(
        children: [
          CustomProgressBar(imageSource: 'assets/images/progress_two.png'),
          BoldText(boldTextTitle: 'Use prepaid label'),
          SizedBox(height: 10),
          SecondText(
            secondTextTitle: 'In the bag you will find a prepaid return \n label. Drop it off at any post office'),
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
          BlackButton(
            title: 'Continue',
            onPressed: () => Navigator.pushNamed(
                context, '/order-donation-bag/free-returns/points'),
            margin: EdgeInsets.all(40),
          ),
          SwizzlBottomNavigation(),
        ],
      ),
    );
  }
}
