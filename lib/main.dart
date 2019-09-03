import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './utils/resources.dart';
import './screens/main_song_screen.dart';
import './screens/privacy_policy_screen.dart';
import './screens/home_screen.dart';
import './screens/splash_screen.dart';
import './screens/program_screen.dart';

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
        ProgramScreen.ROUTE_NAME: (ctx) => ProgramScreen(),
        MainSongScreen.ROUTE_NAME: (ctx) => MainSongScreen(),
        PrivacyPolicyScreen.ROUTE_NAME: (ctx) => PrivacyPolicyScreen(),
      },
    );
  }
}
