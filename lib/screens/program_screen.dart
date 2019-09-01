import 'package:flutter/material.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class ProgramScreen extends StatefulWidget {
  static const ROUTE_NAME = '/program-screen';

  @override
  _ProgramScreenState createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen>
    with SingleTickerProviderStateMixin {
  var tabContrellor;

  @override
  void initState() {
    super.initState();
    tabContrellor = TabController(initialIndex: 1, vsync: this, length: 3);
  }

  @override
  void dispose() {
    super.dispose();
    tabContrellor.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(PROGRAM),
      body: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            child: TabBar(
              controller: tabContrellor,
              tabs: [
                Tab(
                  text: DAY_3,
                ),
                Tab(
                  text: DAY_2,
                ),
                Tab(
                  text: DAY_1,
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabContrellor,
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// helpful link
/// https://flutter.dev/docs/cookbook/design/tabs
