import 'package:flutter/material.dart';
import 'package:trabahero/screens/services/services.dart';

class AuthSmsTextField extends StatelessWidget {
  final List<int> verificationLength;
  final List<FocusNode> focusNodes;
  final List<TextEditingController> smsVerificationCodeController;

  AuthSmsTextField(
    this.verificationLength,
    this.focusNodes,
    this.smsVerificationCodeController
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: verificationLength
        .map((key) => Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new Container(
            padding: EdgeInsets.all(5),
            child: TextField(
              controller: smsVerificationCodeController[key],
              autofocus: true,
              maxLength: 1,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              focusNode: focusNodes[key],
              onChanged: (text) {
                var currentKey = key;
                if(text.isNotEmpty){
                  currentKey++;
                }
                
                if(currentKey == verificationLength.length){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Services())
                  );
                }
                FocusScope.of(context).requestFocus(focusNodes[currentKey]);

              },
              style: TextStyle(
                fontSize: 26, 
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ).toList()
    );
  }
}
