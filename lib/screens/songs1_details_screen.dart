import 'package:flutter/material.dart';
import 'package:mhatb/utils/sizes.dart';
import 'package:mhatb/utils/ui.dart';
import '../utils/resources.dart';

class Songs1DetailsScreen extends StatelessWidget {
  static const ROUTE_NAME = '/songs1-details-screen';
  @override
  Widget build(BuildContext context) {
    final argument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final txt = argument[TITLE_KEY];
    final body = argument[BODY_KEY];
    final body2 = argument[BODY2_KEY];
    final body3 = argument[BODY3_KEY];
    return Scaffold(
        appBar: getAppBar(txt),
        body: Container(
          margin: EDGE_ALL_5,
          padding: EDGE_ALL_5,
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Text(body3,
                        style: TextStyle(
                            fontFamily: 'AvvaShenouda',
                            fontSize: FONT_SIZE_20))),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                    flex: 1,
                    child: Text(
                      body2,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: FONT_SIZE_20),
                    )),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                    flex: 1,
                    child: Text(
                      body,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: FONT_SIZE_20),
                    )),
              ],
            ),
          ),
        ));
  }
}
