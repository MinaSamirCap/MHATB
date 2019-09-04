import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/sizes.dart';
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
      body:Container(
        margin: EDGE_ALL_10,
        padding: EDGE_ALL_10,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor, width: 2),
            borderRadius: RADIUS_CIRCLE_15),
        
          child: SingleChildScrollView(
            child: Center(
                child: Text(
              body,
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
