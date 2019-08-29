import 'dart:async';

import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: const Color(0xFFF5F1E5),
          child: Center(
            child: Text('Abanoub :)'),
          ),
        ),
        Positioned(
          height: 200,
          top: 50,
          left: 0,
          right: 0,
          child:  Center(
              child: Image.asset('assets/images/ebarshya_logo.jpg'),
            ),
          
        ),
      ],
    );
  }

  void startTimer() {
    Timer(Duration(milliseconds: 1500), onTimerFinished);
  }

  void onTimerFinished() {
    //Navigator.of(context).pushReplacementNamed(HomeScreen.ROUTE_NAME);
  }
}
