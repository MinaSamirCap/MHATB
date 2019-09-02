import 'package:flutter/material.dart';
import 'package:mhatb/utils/resources.dart';
import '../utils/ui.dart';

class MainSongScreen extends StatelessWidget {

  static const ROUTE_NAME = '/mainsong-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(MAIN_SONG),
    );
  }
}
