import 'package:flutter/material.dart';

class Songs2DetailsScreen extends StatelessWidget {
 
 static const ROUTE_NAME = '/songs2-details-screen';

  @override
  Widget build(BuildContext context) {
    final txt = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Center(
        child: Text(txt),
      ),
    );
  }
}
