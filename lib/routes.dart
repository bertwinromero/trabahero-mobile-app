import 'package:flutter/material.dart';
import 'screens/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/AuthPhoneNumberValidation': (BuildContext context) => new AuthPhoneNumberValidation(),
    '/SmsVerification': (BuildContext context) => new AuthSmsVerificationCode(),
    '/Services': (BuildContext context) => new Services(),
    '/ServiceAddress': (BuildContext context) => new ServiceAddress(),
  };

  Routes () {
    runApp(new MaterialApp(
      title: 'Trabahero',
      routes: routes,
      home: new AuthPhoneNumberValidation(),
    ));
  }
}