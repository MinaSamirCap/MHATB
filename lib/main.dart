import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mhatb/screens/HomeScreen.dart';
import 'package:mhatb/screens/SplashScreen.dart';

const APP_NAME = "MHATB";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    /// to force protrait mode only for app ...
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
        primaryColor: const Color(0xff006170),
        accentColor: const Color(0xffc40a3c),
        //primaryColor: Colors.amber,
      ),
      home: SplashScreen(),
      routes: {
        HomeScreen.ROUTE_NAME: (ctx) => HomeScreen(),
      },
    );
  }
}
