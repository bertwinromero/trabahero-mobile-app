import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new TextField(
      autofocus: true,
      keyboardType: TextInputType.number,
      decoration: InputDecoration( 
          hintText: '')
    );
  }
}
