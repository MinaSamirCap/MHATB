import 'package:flutter/material.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class FathersSayScreen extends StatelessWidget {

  static const ROUTE_NAME = '/fathers-say-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(FATHERS_SAY),
      
    );
  }
}