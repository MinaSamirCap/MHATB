import 'package:flutter/material.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class ProgramScreen extends StatelessWidget {
  static const ROUTE_NAME = '/program-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(PROGRAM),
    );
  }
}
