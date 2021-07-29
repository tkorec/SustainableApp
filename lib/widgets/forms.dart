import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class DonationFormField extends StatelessWidget {
  final String labelText;
  final FieldValidator validator;
  final TextInputAction textInputAction;
  DonationFormField(
      {Key? key, required this.labelText, required this.validator, required this.textInputAction})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      autofocus: true,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
      ),
    );
  }
}

class DonationFormFieldWithoutValidator extends StatelessWidget {
  final String labelText;
  final TextInputAction textInputAction;
  DonationFormFieldWithoutValidator(
      {Key? key, required this.labelText, required this.textInputAction})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
      ),
    );
  }
}