import 'package:angels_eye/pages/common/widgets/app_card.dart';
import 'package:angels_eye/pages/common/widgets/vehicle_list_custom_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class VehiclePage extends StatefulWidget {
  static const String routeName = '/vehicles';

  @override
  _VehiclePageState createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  final _searchQueryController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _searchQueryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          color: Theme.of(context).colorScheme.primary,
          child: Container(
            margin: EdgeInsets.all(16.0),
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.primaryVariant,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).iconTheme.color,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.onPrimary
                  )
                ),
                  contentPadding: EdgeInsets.all(16.0),
                  hintStyle: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.subtitle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      borderSide: BorderSide(color: Colors.lightGreen)),
                  hintText: "Search Vehicle Reg No",
                  suffixIcon: Icon(Icons.search, color: Theme.of(context).iconTheme.color)),
              style: GoogleFonts.montserrat(fontSize: 18.0, color: Colors.black),
              controller: _searchQueryController,
              textInputAction: TextInputAction.search,
              onChanged: (value) {
                print("Onchange called");
              },
            ),
          ),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              VehicleList(regno: "KCM895N", status: "Online"),
              VehicleList(regno: "KCM895N", status: "Online"),
              VehicleList(regno: "KCM895N", status: "Offline"),
              VehicleList(regno: "KCM895N", status: "Online"),
              VehicleList(regno: "KCM895N", status: "Offline"),
              VehicleList(regno: "KCM895N", status: "Offline"),
              VehicleList(regno: "KCM895N", status: "Online"),
              VehicleList(regno: "KCM895N", status: "Offline"),
              VehicleList(regno: "KCM895N", status: "Online")
            ],
          ),
        ),
      ],
    );
  }
}
