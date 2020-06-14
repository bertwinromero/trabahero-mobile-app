import 'package:flutter/material.dart';
import 'package:trabahero/screens/auths/widgets/index.dart';
import 'package:trabahero/screens/auths/auth-sms-verification-code/index.dart';
import 'package:trabahero/widgets/index.dart';

class AuthPhoneNumberValidation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold( 
      backgroundColor: Colors.yellow[800],
      body: SafeArea(
        child: new Container(

          padding: EdgeInsets.all(20),
          child: new Column(
            children: <Widget>[
              TrabaheroLogoCircle(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: 
                    Text(
                      'YOUR TASK HERO IN A CLICK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                      ),
                  ),  
                ),
              ),
              SizedBox(height: 80,),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: 
                    Text(
                      'Please enter you phone number below:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                  ),  
                ),
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: new Container(
                      padding: EdgeInsets.only(right: 20),
                      child: AuthPhoneNumberPrefix(),
                    )
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: new Container(
                      margin: EdgeInsets.only(top: 22),
                      child: AuthPhoneNumberTextField(),
                    )
                  ),
                ],
             ),
             ButtonTheme(
               minWidth: 250,
               height: 50,
               child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AuthSmsVerificationCode()),
                    );
                  },
                  color: Colors.blue[800],
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                  child: Text(
                    'Continue',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),)
                ),
             ),
            ],
          ),
        )
      )
    );
  }
}