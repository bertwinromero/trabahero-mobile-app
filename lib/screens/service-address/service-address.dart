
import 'package:flutter/material.dart';

class ServiceAddress extends StatefulWidget{
  ServiceAddress();

  @override
  _ServicesAddressState createState() => _ServicesAddressState();
}

class _ServicesAddressState extends State<ServiceAddress>{

  @override
  // void initState(){
  //   }
    // super.initState();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Where do you need help at?"),
        backgroundColor: Colors.yellow[800],
        automaticallyImplyLeading: true,
        leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context),
        )
      ),
      body: SafeArea(
        child: new Container(
          padding: EdgeInsets.all(20),
          child: new Column(
            children: <Widget>[
              Text('Location here')
            ],
          )
        ),
      ),
    );
  }
}