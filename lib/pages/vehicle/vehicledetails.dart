import 'package:flutter/material.dart';

class VehicleDetailsPage extends StatefulWidget {
  @override
  _VehicleDetailsPageState createState() => _VehicleDetailsPageState();
}

class _VehicleDetailsPageState extends State<VehicleDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicle Details"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Center(
              child: Text("Vehicle Details comming soon"),
            ),
          )
        ],
      ),
    );
  }
}
