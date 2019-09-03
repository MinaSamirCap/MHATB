import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/main_drawer_screen.dart';
import '../screens/fathers_say_screen.dart';
import '../screens/main_song_screen.dart';
import '../screens/privacy_policy_screen.dart';
import '../screens/songs2_screen.dart';
import '../screens/songs_screen.dart';
import '../screens/program_screen.dart';
import '../utils/colors.dart';
import '../utils/resources.dart';
import '../utils/sizes.dart';
import '../widgets/action_button_widget.dart';
import '../widgets/quote_widget.dart';

class HomeScreen extends StatelessWidget {
  static const ROUTE_NAME = '/home-screen';

  @override
  Widget build(BuildContext context) {
    /// to show status bar and navigation bar again
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
        drawer: MainScreenDrawer(),
        appBar: AppBar(
          title: Text(APP_NAME),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              tooltip: PRIVACY_POLICY,
              onPressed: () {
                openPrivacyPolicyScreen(context);
              },
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            QuoteWidget(),
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: MARGIN_SIZE_10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ActionButtonWidget(openProgramScreen, color7, PROGRAM),
                    SizedBox(
                      width: 10,
                    ),
                    ActionButtonWidget(openMainSongScreen, color1, MAIN_SONG),
                  ],
                )),
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: MARGIN_SIZE_10, horizontal: MARGIN_SIZE_10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ActionButtonWidget(openSongsScreen, color4, SONGS),
                    SizedBox(
                      width: 10,
                    ),
                    ActionButtonWidget(openSongs2Screen, color5, SONGS2),
                  ],
                )),
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: MARGIN_SIZE_10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ActionButtonWidget(
                        openFathersSayScreen, color3, FATHERS_SAY),
                  ],
                )),
          ],
        ));
  }

  void openPrivacyPolicyScreen(BuildContext cxt) {
    Navigator.of(cxt).pushNamed(PrivacyPolicyScreen.ROUTE_NAME);
  }

  void openMainSongScreen(BuildContext cxt) {
    Navigator.of(cxt).pushNamed(MainSongScreen.ROUTE_NAME);
  }

  void openProgramScreen(BuildContext cxt) {
    Navigator.of(cxt).pushNamed(ProgramScreen.ROUTE_NAME);
  }

  void openSongsScreen(BuildContext cxt) {
    Navigator.of(cxt).pushNamed(SongsScreen.ROUTE_NAME);
  }

  void openSongs2Screen(BuildContext cxt) {
    Navigator.of(cxt).pushNamed(Songs2Screen.ROUTE_NAME);
  }

  void openFathersSayScreen(BuildContext cxt) {
    Navigator.of(cxt).pushNamed(FathersSayScreen.ROUTE_NAME);
  }
}
