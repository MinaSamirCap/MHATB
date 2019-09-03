import 'package:flutter/material.dart';
import '../utils/ui.dart';
import '../utils/resources.dart';

class Songs2DetailsScreen extends StatelessWidget {
  static const ROUTE_NAME = '/songs2-details-screen';

  @override
  Widget build(BuildContext context) {
    final argument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final txt = argument[TITLE_KEY];
    final body = argument[BODY_KEY];
    return Scaffold(
      appBar: getAppBar(txt),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(body),
          ],
        ),
      ),
    );
  }
}
