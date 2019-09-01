import 'package:flutter/material.dart';
import 'package:mhatb/main.dart';
import 'package:flutter/services.dart';
import 'package:mhatb/utils/sizes.dart';
import 'package:mhatb/widgets/action_button_widget.dart';
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
                    ActionButtonWidget(openProgramScreen, Colors.yellow, 'Pro1'),
                    SizedBox(
                      width: 10,
                    ),
                    ActionButtonWidget(openAnotherScreen, Colors.amber, 'Pro2')
                  ],
                )),
          ],
        ));
  }

  void openProgramScreen() {
    print("mina");
  }

  void openAnotherScreen() {
    print("monmon");
  }
}
