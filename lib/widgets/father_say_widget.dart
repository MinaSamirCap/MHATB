import 'package:flutter/material.dart';
import 'package:mhatb/utils/sizes.dart';
import '../utils/resources.dart';

class FatherSayWidget extends StatelessWidget {
  final Map<String, String> item;
  FatherSayWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 85,
            right: 0,
            child: Card(
              elevation: 8,
              child: Container(
                height: 140,
                padding: EdgeInsets.only(
                    top: MARGIN_SIZE_5,
                    bottom: 0,
                    left: MARGIN_SIZE_15,
                    right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item[QUOTE_KEY],
                      style: TextStyle(fontSize: FONT_SIZE_25),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      item[NAME_KEY],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: FONT_SIZE_16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: RADIUS_CIRCLE_15,
              child: Image.asset(
                item[PIC_KEY],
                width: 100,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
