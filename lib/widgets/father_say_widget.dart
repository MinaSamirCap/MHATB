import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../utils/sizes.dart';
import '../utils/resources.dart';

class FatherSayWidget extends StatelessWidget {
  final Map<String, String> item;
  FatherSayWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 90),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: RADIUS_CIRCLE_15,
                  ),
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MARGIN_SIZE_5,
                        bottom: 0,
                        left: MARGIN_SIZE_15,
                        right: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        AutoSizeText(
                          item[QUOTE_KEY],
                          maxLines: 3,
                          style: TextStyle(fontSize: FONT_SIZE_22),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: MARGIN_SIZE_35,
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
              Positioned(
                left: 110,
                bottom: 5,
                child: Text(
                  item[NAME_KEY],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: FONT_SIZE_16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
