import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TopMapPageContent extends StatelessWidget {
  final _searchQueryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 18.0,
      color: Theme.of(context).colorScheme.primary,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0, right: 10.0, left: 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.primaryVariant,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .iconTheme
                                        .color)),
                            contentPadding: EdgeInsets.all(10.0),
                            hintStyle: GoogleFonts.montserrat(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15.0)),
                                borderSide:
                                BorderSide(color: Colors.white)),
                            hintText: "Search by Plate No",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Theme.of(context).iconTheme.color,
                            )),
                        style: GoogleFonts.montserrat(
                            textStyle:
                            Theme.of(context).textTheme.title),
//            onEditingComplete: ,
                        controller: _searchQueryController,
                        textInputAction: TextInputAction.search,
                        onChanged: (value) {
                          print("Onchange called");
                        },
                      )),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: _statusicon(color: Colors.lightGreen)),
//                            Expanded(child: _statusicon(color: Colors.red)),
                      Expanded(
                          child: _iconText(
                              icon: Icons.receipt, title: "Reports")),
                      Expanded(
                          child: _iconText(
                              icon: Icons.message, title: "Events")),
                      Expanded(
                        child: _iconText(
                            icon: Icons.filter_list,
                            title: "Filter",
                            onTap: () => print("pressed")),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget _iconText({IconData icon, String title, GestureTapCallback onTap}) {
  return FlatButton(
    onPressed: onTap,
    child: Column(
      children: <Widget>[
        Icon(icon, size: 20, color: Color(0xff54c293)),
        SizedBox(height: 5.0),
        Text(title,
            style: GoogleFonts.montserrat(
                fontSize: 12.0, color: Color(0xff54c293))),
      ],
    ),
  );
}

Widget _statusicon({Color color, String no}) {
  return Row(
//    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipOval(
          child: Container(
            padding: EdgeInsets.all(5.0),
            height: 20.0,
            width: 20.0,
            color: color,
            child: Icon(
              Icons.directions_car,
              color: Colors.white,
              size: 10.0,
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text("200")
      ]);
}
