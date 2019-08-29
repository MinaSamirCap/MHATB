import 'package:flutter/material.dart';
import 'package:mhatb/main.dart';
import 'package:mhatb/utils/resources.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  static const ROUTE_NAME = '/home-screen';

  @override
  Widget build(BuildContext context) {

    /// to show status bar and navigation bar again
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
        drawer: Drawer(
            child: Center(
          child: Text('MinaSamir'),
        )),
        appBar: AppBar(
          title: Text(APP_NAME),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Text(
                QUOTE_DECORATED,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                GUIDE_DECORATED,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
