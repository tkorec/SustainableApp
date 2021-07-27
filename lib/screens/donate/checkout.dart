import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';
import 'package:second_app/widgets/buttons.dart';
import 'package:second_app/widgets/appbar.dart';
import 'package:second_app/widgets/progressbar.dart';
import 'package:second_app/widgets/forms.dart';
import 'package:form_field_validator/form_field_validator.dart';

class DonationCheckout extends StatefulWidget {
  @override
  _DonationCheckoutState createState() => _DonationCheckoutState();
}

class _DonationCheckoutState extends State<DonationCheckout> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: formKey,
              child: Column(
                children: <Widget>[
                  DonationFormField(
                    labelText: 'Name',
                    validator: RequiredValidator(errorText: 'Name is required'),
                  ),
                  SizedBox(height: 15.0),
                  DonationFormField(
                    labelText: 'Email',
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Email is required'),
                      EmailValidator(errorText: 'Email is not valid'),
                    ]),
                  ),
                  SizedBox(height: 15.0),
                  DonationFormField(
                    labelText: 'Phone number',
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Phone number is required'),
                      PatternValidator(r'(^[0-9]+$)', errorText: 'Only numbers')
                    ]),
                  ),
                  SizedBox(height: 15),
                  DonationFormField(
                    labelText: 'Address line 1',
                    validator:
                        RequiredValidator(errorText: 'Address is required'),
                  ),
                  SizedBox(height: 15.0),
                  DonationFormField(
                    labelText: 'Address line 2',
                    validator: RequiredValidator(errorText: ''),
                  ),
                  SizedBox(height: 15.0),
                  DonationFormField(
                    labelText: 'City',
                    validator: RequiredValidator(errorText: 'City is required'),
                  ),
                  SizedBox(height: 15.0),
                  DonationFormField(
                    labelText: 'Post Code',
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Post code is required'),
                      PatternValidator(r'(^[0-9]+$)', errorText: 'Only numbers')
                    ]),
                  ),
                  
                  BlackButton(
                    title: 'Complete order – £0',
                    onPressed: () => Navigator.pushNamed(context, '/order-donation-bag/free-returns/points/checkout/donation-complete'),
                    margin: EdgeInsets.only(
                        bottom: 40, left: 15, right: 15, top: 40),
                  ),
                ],
              ),
            ),
          ),
          SwizzlBottomNavigation(),
        ],
      ),
    );
  }
}
