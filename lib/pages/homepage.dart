import 'package:angels_eye/pages/common/drawer/drawer.dart';
import 'package:angels_eye/pages/map/mappage.dart';
import 'package:angels_eye/pages/reports/reports.dart';
import 'package:angels_eye/pages/vehicle/vehiclepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  Widget _currentPage;
  int _currentIndex = 0;
  List _listPages = List();

  @override
  void initState() {
    super.initState();
    _listPages..add(MapPage())..add(VehiclePage())..add(ReportsPage());
    _currentPage = MapPage();
  }

  _changePage(index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _listPages[_currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      key: _drawerKey,
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 15.0),
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Theme.of(context).iconTheme.color,
                          size: 27.0,
                        ),
                        onPressed: () =>
                            {_drawerKey.currentState.openDrawer()}),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 50.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/logo.png"),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Theme.of(context).iconTheme.color,
                          size: 27.0,
                        ),
                        onPressed: () => print("serch Icon clicked")),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _currentPage,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Theme.of(context).colorScheme.onPrimary,
                size: 32.0,
              ),
              title: Text("Map",style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.subhead),)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                color: Theme.of(context).colorScheme.onPrimary,
                size: 32.0,
              ),
              title: Text("Vehicles",style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.subhead),)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt,
                color: Theme.of(context).colorScheme.onPrimary,
                size: 32.0,
              ),
              title: Text("Reports", style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.subhead))),
        ],
        selectedItemColor: Theme.of(context).iconTheme.color,
        currentIndex: _currentIndex,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 16.0,
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }
}

