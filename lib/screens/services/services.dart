
import 'package:flutter/material.dart';
import 'widgets/index.dart';
import 'package:trabahero/models/index.dart';

class Services extends StatefulWidget{
  final List<IdStringName> featuredServices = [
    IdStringName(id: 'cleaning', name: 'Cleaning'),
    IdStringName(id: 'carpentry', name: 'Carpentry'),
    IdStringName(id: 'plumbing', name: 'Plumbing'),
    IdStringName(id: 'electrical', name: 'Electrical'),
    IdStringName(id: 'cleaning', name: 'Aircon Repair'),
    IdStringName(id: 'laundry', name: 'Laundry'),
  ];

  final List<IdStringName> allServices = [
    IdStringName(id: 'cleaning', name: 'Aircon Repair'),
    IdStringName(id: 'electrical', name: 'Electrical'),
    IdStringName(id: 'laundry', name: 'Laundry'),
    IdStringName(id: 'carpentry', name: 'Carpentry'),
    IdStringName(id: 'cleaning', name: 'Cleaning'),
    IdStringName(id: 'plumbing', name: 'Plumbing'),
    IdStringName(id: 'electrical', name: 'Electrical'),
    IdStringName(id: 'cleaning', name: 'Aircon Repair'),
    IdStringName(id: 'laundry', name: 'Laundry'),
    IdStringName(id: 'cleaning', name: 'Aircon Repair'),
    IdStringName(id: 'electrical', name: 'Electrical'),
    IdStringName(id: 'laundry', name: 'Laundry'),
  ];
  Services();

  @override
  _ServicesListState createState() => _ServicesListState();
}

class _ServicesListState extends State<Services>{
  List<Service> _featuredServiceList = [];
  List<Service> _allServiceList = [];

  @override
  void initState(){
    for (var i = 0; i < widget.featuredServices.length; i++) {
      var iconName = (widget.featuredServices[i].id).toString() + '.png';
      print(iconName);
      _featuredServiceList.add(
        Service(
          id: i,
          name: widget.featuredServices[i].name,
          icon: 'assets/images/service-icons/$iconName'
        )
      );
    }

    for (var i = 0; i < widget.allServices.length; i++) {
      var iconName = (widget.allServices[i].id).toString() + '.png';
      print(iconName);
      _allServiceList.add(
        Service(
          id: i,
          name: widget.allServices[i].name,
          icon: 'assets/images/service-icons/$iconName'
        )
      );
    }

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: <Widget>[
            SizedBox(height: 5,),
            Text(
              "Welcome, Bertwin Romero!",
            ),
            GestureDetector(
              child: Text(
                'How may I help you?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),
                ),
            )
          ],
        ),
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow[800],
      ),
      body: SafeArea(
        child: new Container(
          padding: EdgeInsets.all(20),
          child: new ListView(
            children: <Widget>[
              Text(
                'Featured Services',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                )
              ),
              SizedBox(height: 10,),
              ServiceCard(_featuredServiceList),
              SizedBox(height: 30,),
              Text(
                'All Services',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                )
              ),
              SizedBox(height: 10,),
              ServiceCard(_allServiceList),
            ],
          ),
        ),
      ),
    );
  }
}