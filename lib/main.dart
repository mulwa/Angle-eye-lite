import 'package:angels_eye/Providers/appstate.dart';
import 'package:angels_eye/pages/homepage.dart';
import 'package:angels_eye/pages/map/mappage.dart';
import 'package:angels_eye/pages/reports/reports.dart';
import 'package:angels_eye/pages/vehicle/vehiclepage.dart';
import 'package:angels_eye/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
  create: (BuildContext context) => AppStateProvider(),
    child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var appStateProvider = Provider.of<AppStateProvider>(context);
    return MaterialApp(
      title: 'Angels Eye Light',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: appStateProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/map": (BuildContext context) => MapPage(),
        "reports": (BuildContext context) => ReportsPage(),
        "vehicles": (BuildContext context) => VehiclePage()
      },
    );
  }
}
