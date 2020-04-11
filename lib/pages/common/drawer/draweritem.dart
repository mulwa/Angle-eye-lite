import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateDrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final GestureTapCallback onTap;

  const CreateDrawerItem({Key key, this.icon, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, size: 32, color: Theme.of(context).iconTheme.color),
          SizedBox(width: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text,style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.subhead),),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}



