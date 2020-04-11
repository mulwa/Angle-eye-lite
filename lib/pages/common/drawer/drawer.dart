import 'package:angels_eye/Providers/appstate.dart';
import 'package:angels_eye/pages/common/drawer/drawerheader.dart';
import 'package:angels_eye/pages/common/drawer/draweritem.dart';
import 'package:flutter/material.dart';
import 'package:angels_eye/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appStateProvider = Provider.of<AppStateProvider>(context);
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: ListView(
          children: <Widget>[
            createDrawerHeader(),
            SizedBox(height: 15.0),
            CreateDrawerItem(
                icon: Icons.alarm,
                text: 'Alerts',
                onTap: () => Navigator.pushReplacementNamed(context, Routes.map)),
            CreateDrawerItem(
                icon: Icons.settings,
                text: 'Settings',
                onTap: () =>
                    Navigator.pushReplacementNamed(context, Routes.reports)),
            CreateDrawerItem(
                icon: Icons.group_work,
                text: 'My Geofences',
                onTap: () =>
                    Navigator.pushReplacementNamed(context, Routes.vehicles)),
            Divider(),
            CreateDrawerItem(
                icon: Icons.account_circle,
                text: "Log out",
                onTap: (){
                  print('Log out comming soon');
                  Navigator.pop(context);
                }),
            SizedBox(height: 10.0),
            Divider(height: 2, color: Theme.of(context).iconTheme.color),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Text("Dark Mode",style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.subhead)),
                  Switch(value: appStateProvider.isDarkMode,
                    activeColor: Theme.of(context).iconTheme.color,
                    activeTrackColor:Theme.of(context).iconTheme.color,
                    inactiveThumbColor: Theme.of(context).colorScheme.secondary,
                    inactiveTrackColor:Theme.of(context).colorScheme.onPrimary ,
                    onChanged: (value){
                    appStateProvider.updateTheme(value);
                    Navigator.pop(context);

                    },
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
