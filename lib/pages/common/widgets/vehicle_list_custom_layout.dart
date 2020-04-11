import 'package:angels_eye/pages/common/widgets/app_card.dart';
import 'package:angels_eye/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicleList extends StatelessWidget {
  final String regno;
  final String status;

  const VehicleList({Key key, this.regno, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Container(
//            height: 250,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ClipOval(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    height: 20.0,
                    width: 20.0,
                    color:
                        (status == "Online") ? Colors.lightGreen : Colors.red,
                    child: Icon(
                      Icons.directions_car,
                      color: Colors.white,
                      size: 10.0,
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                Text(regno,
                    style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.title))
              ]
            ),
//                SizedBox(height: 16.0,),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(width: 1.0, color: Theme.of(context).colorScheme.onPrimary),
              )),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                   IconText(
                      icon: Icons.pin_drop,
                      title: "Tracking",
                      onTap: () {
                        print("open tracking page");
                      }),
                  IconText(icon: Icons.linear_scale, title: "Playback"),
                  IconText(icon: Icons.calendar_today, title: "Details"),
                  IconText(icon: Icons.more_horiz, title: "More"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class IconText extends StatelessWidget {
  final IconData icon;
  final String title;
  final GestureTapCallback onTap;

  const IconText({Key key, this.icon, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Icon(icon, size: 22, color: Theme.of(context).iconTheme.color),
          SizedBox(height: 5.0),
          Text(title, style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.subtitle)),
        ],
      ),
    );
  }
}


