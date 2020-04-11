import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget child;

  const AppCard({Key key, this.child}) : super(key: key);
  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          margin: EdgeInsets.symmetric(vertical: 3.0,horizontal: 6.0),
          color: Theme.of(context).colorScheme.primaryVariant,
          elevation: 8.0,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: widget.child,
          ),
        )
      ],
    );
  }
}
