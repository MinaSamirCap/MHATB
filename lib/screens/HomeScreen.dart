import 'package:flutter/material.dart';
import 'package:mhatb/main.dart';
import 'package:flutter/services.dart';
import '../widgets/QuoteWidget.dart';

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
        body: Column(
          children: <Widget>[
            QuoteWidget(),
            Text('Mina Samir'),
            RaisedButton(
              onPressed: null,
              child: Text('Button'),
            )
          ],
        ));
  }
}
