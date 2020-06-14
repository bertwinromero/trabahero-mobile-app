import 'package:flutter/material.dart';
import 'package:trabahero/screens/auths/widgets/index.dart';

class AuthSmsVerificationCode extends StatefulWidget{
  final int verificationLength = 6;

  AuthSmsVerificationCode();

  @override
  _AuthSmsVerificationCodeState createState() => _AuthSmsVerificationCodeState();
}

class _AuthSmsVerificationCodeState extends State<AuthSmsVerificationCode>{
  final List<TextEditingController> smsVerificationCodeController = [];
  List<int> _verificationLength = [];
  List<FocusNode> _focusNodes = [];


  @override
  void initState() {
    for (var i = 0; i < widget.verificationLength; i++) {
      FocusNode focusNode = new FocusNode();
      var controller = new TextEditingController();
      _verificationLength.add(i);
      _focusNodes.add(focusNode);
      smsVerificationCodeController.add(controller);
      smsVerificationCodeController[i].addListener(_printLatestValue);
    }
    super.initState();
    // smsVerificationCodeController.addListener(_printLatestValue);

  }


  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    // _focusNodes.dispose();
    // smsVerificationCodeController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[800],
      body: SafeArea(
        child: new Container(
          padding: EdgeInsets.all(20),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Please enter 6 digits code sent to'),
              SizedBox(height: 20,),
              Text(
                '+639295953171',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.left
              ),
              SizedBox(height: 20,),
              AuthSmsTextField(_verificationLength, _focusNodes, smsVerificationCodeController),
              SizedBox(height: 20,),
              Text("Didn't receive any?"),
              SizedBox(height: 10,),
              Text("Request again"),
            ],
          ),
        ),
      )
    );
  }

  _printLatestValue() {
    // GET VALUE FROM INPUT
    // print("Second text field: ${smsVerificationCodeController[0].text}");
  }
}