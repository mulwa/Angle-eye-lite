import 'package:flutter/material.dart';

class ReportsPage extends StatefulWidget {
  static const String routeName = '/reports';

  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Reports Page"),
    );
  }
}
