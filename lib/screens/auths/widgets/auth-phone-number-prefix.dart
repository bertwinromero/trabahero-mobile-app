import 'package:flutter/material.dart';

class AuthPhoneNumberPrefix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new TextField(
      autofocus: false,
      enabled: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.flag),
        hintText: '+639')
    );
  }
}
