import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackingPage extends StatefulWidget {
  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _myLocation = CameraPosition(
    target: LatLng(-1.322863, 36.899836),
    zoom: 12.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: GoogleMap(
                initialCameraPosition: _myLocation,
                mapType: MapType.normal,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                markers: {
                  Marker(
                      markerId: MarkerId("networked0"),
                      position: LatLng(-1.1572601, 36.9637046),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                          BitmapDescriptor.hueGreen),
                      onTap: () {}),
                },
              ),
            ),
            Positioned(
//            top: 0.0,
              child: Container(
                height: 58.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 32,
                            color: Colors.lightGreen,
                          ),
                          onPressed: () => Navigator.of(context).pop()),
                    ),
                    Text(
                      "KCG789L",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.lightGreen, letterSpacing: 2.5),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          size: 32,
                          color: Colors.lightGreen,
                        ),
                        onPressed: () {
                          print("more button clicked");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
