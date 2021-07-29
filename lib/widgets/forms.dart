import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class DonationFormField extends StatelessWidget {
  final String labelText;
  final FieldValidator validator;
  DonationFormField(
      {Key? key, required this.labelText, required this.validator})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
  DonationFormFieldWithoutValidator(
      {Key? key, required this.labelText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
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