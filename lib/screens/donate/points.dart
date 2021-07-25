import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';
import 'package:second_app/widgets/buttons.dart';
import 'package:second_app/widgets/appbar.dart';
import 'package:second_app/widgets/progressbar.dart';
import 'package:second_app/widgets/texts.dart';

class DonateForPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        pageTitle: 'Points',
      ),
      body: Column(
        children: <Widget>[
          CustomProgressBar(imageSource: 'assets/images/progress_three.png'),
          BoldText(boldTextTitle: 'The drop'),
          SizedBox(
            height: 10,
          ),
          SecondText(
            secondTextTitle: 'When we sell your donation you will \n receive points'),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/drop_image.png',
            height: 200,
            width: 200,
          ),
          BoldText(boldTextTitle: 'Recycling'),
          SizedBox(
            height: 10,
          ),
          SecondText(
            secondTextTitle: 'Even if your donations get recycled you \n still will gain points'),
          Image.asset(
            'assets/images/recycling_image.png',
            height: 200,
            width: 200,
          ),
          BlackButton(
            title: 'Continue',
            onPressed: () => Navigator.pushNamed(
              context,
              '/order-donation-bag/free-returns/points/checkout',
            ),
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 40),
          ),
          SwizzlBottomNavigation(),
        ],
      ),
    );
  }
}
