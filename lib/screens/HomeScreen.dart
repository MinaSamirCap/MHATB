import 'package:flutter/material.dart';
import 'package:mhatb/main.dart';
import 'package:mhatb/utils/resources.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
