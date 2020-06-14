import 'package:flutter/material.dart';
import 'package:trabahero/models/index.dart';
import 'package:trabahero/screens/service-address/index.dart';

class ServiceCard extends StatelessWidget {
  final List<Service> serviceList;

  ServiceCard(
    this.serviceList
  );

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 3,
      physics: ScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true,
      children: List.generate(serviceList.length, (index) {
        return Center(
          child: new Material(
            child: new GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ServiceAddress()),
                )
              },
              child: new Card(
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 12,),
                    AspectRatio(
                      aspectRatio: 14.0 / 8.0,
                      child: Image.asset(
                        serviceList[index].icon,
                        // fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 6),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        serviceList[index].name,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
