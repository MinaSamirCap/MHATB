import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mhatb/utils/sizes.dart';
import 'package:mhatb/utils/ui.dart';
import '../utils/resources.dart';

class Songs1DetailsScreen extends StatelessWidget {
  static const ROUTE_NAME = '/songs1-details-screen';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    final argument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final txt = argument[TITLE_KEY];
    final body = argument[BODY_KEY];
    return Scaffold(
        appBar: getAppBar(txt),
        body: Container(
          margin: EDGE_ALL_5,
          padding: EDGE_ALL_5,
          child: SingleChildScrollView(
            child: Row(
              children: <Widget>[
                Flexible(flex: 1, child: Text(SO2_1)),
                SizedBox(
                  width: 5,
                ),
                Flexible(flex: 1, child: Text(SO2_1)),
                SizedBox(
                  width: 5,
                ),
                Flexible(flex: 1, child: Text(SO2_1)),
              ],
            ),
          ),
        ));
  }
}
