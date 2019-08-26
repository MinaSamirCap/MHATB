import 'package:flutter/material.dart';
import 'package:mhatb/main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(APP_NAME),
        ),
        body: Container(
          child: Center(
            child: Text(APP_NAME),
          ),
        ));
  }
}
