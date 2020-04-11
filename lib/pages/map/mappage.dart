import 'package:angels_eye/Providers/appstate.dart';
import 'package:angels_eye/pages/map/bottomsheetcontent.dart';
import 'package:angels_eye/pages/map/mappagecard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';

class MapPage extends StatefulWidget {
  static const String routeName = '/map';
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  PersistentBottomSheetController _botomsheetcontroller;
  GlobalKey<ScaffoldState> _key = GlobalKey();
  bool _openbottonSheet = false;
  GoogleMapController _controller;
  static final CameraPosition _myLocation = CameraPosition(
    target: LatLng(-1.322863, 36.899836),
    zoom: 12.0,
  );

  @override
  void initState() {
    super.initState();

  }

  void _openBottomSheet(String vehicle) {
    if (!_openbottonSheet) {
      _botomsheetcontroller = _key.currentState.showBottomSheet((_) {
        return BottomSheetContent(vehicle: vehicle);
      });
    } else {
      _botomsheetcontroller.close();
    }
    setState(() => _openbottonSheet = !_openbottonSheet);
  }

  @override
  Widget build(BuildContext context) {
//    var appStateProvider = Provider.of<AppStateProvider>(context);
    return Scaffold(
      key: _key,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Consumer<AppStateProvider>(
              builder: (_, appStateProvider, __) =>
               GoogleMap(
                initialCameraPosition: _myLocation,
                mapType: MapType.normal,
                onMapCreated: (GoogleMapController controller) {
                  _controller = controller;
                  setState(() {
                    _controller.setMapStyle( appStateProvider.isDarkMode ? appStateProvider.getDarkMapStyle() : appStateProvider.getLightMapStyle());

                  });
                },
                markers: {
                  Marker(
                      markerId: MarkerId("networked0"),
                      position: LatLng(-1.1572601, 36.9637046),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                          BitmapDescriptor.hueGreen),
                      onTap: () {
                        _openBottomSheet("JHGA");
                      }),
                  Marker(
                      markerId: MarkerId("networked001"),
                      position: LatLng(-1.322865, 36.899863),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                          BitmapDescriptor.hueGreen),
                      onTap: () {
                        _openBottomSheet("KCA986J");
                      }),
                },
              ),
            ),
            TopMapPageContent(),

          ],
        ),
      ),
    );
  }
}

Widget createBottomSheetLink(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Icon(icon, color: Colors.lightGreen),
        SizedBox(
          width: 10.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            text,
            style: GoogleFonts.montserrat(fontSize: 16.0),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
