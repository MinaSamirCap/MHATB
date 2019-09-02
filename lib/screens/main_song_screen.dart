import 'package:flutter/material.dart';
import 'package:mhatb/utils/colors.dart';
import 'package:mhatb/utils/resources.dart';
import 'package:mhatb/utils/sizes.dart';
import '../utils/ui.dart';

class MainSongScreen extends StatelessWidget {
  static const ROUTE_NAME = '/mainsong-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(MAIN_SONG),
      body: Container(
        margin: EDGE_ALL_10,
        decoration: BoxDecoration(
            border: Border.all(color: color1, width: 2),
            borderRadius: RADIUS_CIRCLE_15),
        
          child: SingleChildScrollView(
            child: Center(
                child: Text(
              MAIN_SONG_DETAILS,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: FONT_SIZE_25, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      
    );
  }
}
