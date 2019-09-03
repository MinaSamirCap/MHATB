import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mhatb/screens/main_song_screen.dart';
import 'package:mhatb/screens/privacy_policy_screen.dart';
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
        drawer: Drawer(
            child: Center(
          child: Text('MinaSamir'),
        )),
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
                    ActionButtonWidget(openProgramScreen, color3, PROGRAM),
                    SizedBox(
                      width: 10,
                    ),
                    ActionButtonWidget(openMainSongScreen, color1, MAIN_SONG),
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
}
