import 'package:flutter/material.dart';

class TrabaheroLogoCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Image.asset(
      'assets/images/character-head-with-trabahero.png',
      width: MediaQuery.of(context).size.width * 0.50,
    );
  }
}
