import 'package:flutter/material.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class SongsScreen extends StatelessWidget {

  static const ROUTE_NAME = '/songs-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(SONGS),
      
    );
  }
}