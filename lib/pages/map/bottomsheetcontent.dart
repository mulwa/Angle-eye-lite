import 'package:angels_eye/pages/map/mappage.dart';
import 'package:angels_eye/pages/vehicle/tracking.dart';
import 'package:angels_eye/pages/vehicle/vehicledetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetContent extends StatelessWidget {
  final String vehicle;

  const BottomSheetContent({Key key, this.vehicle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 4 + 50.0,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.lightGreen,
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
//                      height: 50.0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      vehicle,
                      style: GoogleFonts.montserrat(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      "Online",
                      style: GoogleFonts.montserrat(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Text(
                      "100Kmp",
                      style: GoogleFonts.montserrat(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 16.0),
                  padding: EdgeInsets.all(10.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      createBottomSheetLink(
                          icon: Icons.pin_drop,
                          text: "Tracking",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrackingPage()));
                          }),
                      Divider(),
                      createBottomSheetLink(
                          icon: Icons.library_books,
                          text: "Details",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        VehicleDetailsPage()));
                          }),
                      Divider(),
                      createBottomSheetLink(
                          icon: Icons.linear_scale,
                          text: "Playback",
                          onTap: () {
                            print('Open Playback page');
                          }),
                    ],
                  ),
                ))
          ],
        ));
  }
}
