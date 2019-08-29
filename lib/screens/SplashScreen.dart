import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mhatb/main.dart';

import './HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // start the timer of splash screen
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    /// to hide only bottom bar:
    /// SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);

    /// to hide only status bar:
    /// SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    /// to show status bar and navigation bar again
    /// SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    /// to hide both:
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Stack(
      children: <Widget>[
        Container(
          color: const Color(0xFFF5F1E5),
          child: Center(
            child: Text(APP_NAME),
          ),
        ),
        Positioned(
          height: 200,
          top: 50,
          left: 0,
          right: 0,
          child: Center(
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
    Navigator.of(context).pushReplacementNamed(HomeScreen.ROUTE_NAME);
  }
}
