import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';
import 'package:second_app/widgets/buttons.dart';
import 'package:second_app/widgets/appbar.dart';
//import 'package:second_app/widgets/progressbar.dart';
import 'package:second_app/widgets/forms.dart';
import 'package:form_field_validator/form_field_validator.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class DonationCheckout extends StatefulWidget {
  @override
  _DonationCheckoutState createState() => _DonationCheckoutState();
}

class _DonationCheckoutState extends State<DonationCheckout> {
  //final FirebaseFirestore firestore = FirebaseFirestore.instance;

  TextEditingController etName = new TextEditingController();
  TextEditingController etMail = new TextEditingController();
  TextEditingController etPhone = new TextEditingController();
  TextEditingController etAddressOne = new TextEditingController();
  TextEditingController etAddressTwo = new TextEditingController();
  TextEditingController etCity = new TextEditingController();
  TextEditingController etPostCode = new TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        pageTitle: 'Checkout',
      ),
      body: Column(
        children: <Widget>[
          Padding(
            child: Image.asset('assets/images/progress_four.png'),
            padding: EdgeInsets.only(left: 40, right: 40, top: 20),
          ),
          SizedBox(height: 40),
          Expanded(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: formKey,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: <Widget>[
                  DonationFormField(
                      textInputAction: TextInputAction.next,
                      labelText: 'Name',
                      controller: etName,
                      validator:
                          RequiredValidator(errorText: 'Name is required')),
                  SizedBox(height: 15),
                  DonationFormField(
                    textInputAction: TextInputAction.next,
                    labelText: 'Email',
                    controller: etMail,
                    validator: MultiValidator(
                      [
                        RequiredValidator(errorText: 'Email is required'),
                        EmailValidator(errorText: 'Email must be valid'),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  DonationFormField(
                    textInputAction: TextInputAction.next,
                    labelText: 'Phone number',
                    controller: etPhone,
                    validator: MultiValidator(
                      [
                        RequiredValidator(
                            errorText: 'Phone number is required'),
                        PatternValidator(r'(^[0-9]+$)',
                            errorText: 'Only numbers')
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  DonationFormField(
                    textInputAction: TextInputAction.next,
                    labelText: 'Address line 1',
                    controller: etAddressOne,
                    validator:
                        RequiredValidator(errorText: 'Address is required'),
                  ),
                  SizedBox(height: 15),
                  DonationFormFieldWithoutValidator(
                    textInputAction: TextInputAction.next,
                    labelText: 'Address line 2',
                    controller: etAddressTwo,
                  ),
                  SizedBox(height: 15),
                  DonationFormField(
                    textInputAction: TextInputAction.next,
                    labelText: 'City',
                    controller: etCity,
                    validator: RequiredValidator(errorText: 'City is required'),
                  ),
                  SizedBox(height: 15),
                  DonationFormField(
                    textInputAction: TextInputAction.done,
                    labelText: 'Post Code',
                    controller: etPostCode,
                    validator: MultiValidator(
                      [
                        RequiredValidator(errorText: 'Post Code is required'),
                        PatternValidator(r'(^[0-9]+$)',
                            errorText: 'Only numbers')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          BlackButton(
            title: 'Complete order – £0',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushNamed(context, '/order-donation-bag/free-returns/points/checkout/donation-complete');
              } else {
                print("Not validate");
                print(etPostCode.text);
              }
            },
            margin: EdgeInsets.only(bottom: 40, left: 15, right: 15, top: 40),
          ),
          SwizzlBottomNavigation(),
        ],
      ),
    );
  }
}


