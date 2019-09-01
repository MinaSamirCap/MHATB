import 'package:flutter/material.dart';
import '../utils/sizes.dart';
import '../utils/resources.dart';

class QuoteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor, borderRadius: RADIUS_CIRCLE_15),
      margin: EDGE_ALL_10,
      padding: EDGE_ALL_10,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          getQuoteSyle(QUOTE_DECORATED, FONT_SIZE_22),
          getQuoteSyle(GUIDE_DECORATED, FONT_SIZE_18),
        ],
      ),
    );
  }

  Widget getQuoteSyle(String txt, double fontSize) {
    return Text(
      txt,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: fontSize, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
