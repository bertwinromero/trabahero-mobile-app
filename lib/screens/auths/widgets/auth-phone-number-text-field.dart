import 'package:flutter/material.dart';

class AuthPhoneNumberTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new TextField(
      autofocus: true,
      maxLength: 10,
      keyboardType: TextInputType.number,
      decoration: InputDecoration( 
        prefixIcon: Icon(Icons.phone_android),
        hintText: '')
    );
  }
}
