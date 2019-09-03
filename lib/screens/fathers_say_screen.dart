import 'package:flutter/material.dart';
import '../utils/sizes.dart';
import '../widgets/father_say2_widget%20copy.dart';
import '../widgets/father_say_widget.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class FathersSayScreen extends StatelessWidget {
  static const ROUTE_NAME = '/fathers-say-screen';

  final List<Map<String, String>> data = FATHERS_SAY_DETAILS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(FATHERS_SAY_HOLY),
      body: Container(
          width: double.infinity,
          margin: EDGE_ALL_15,
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (ctx, index) {
              return (index % 2 == 0)
                  ? FatherSayWidget(data[index])
                  : FatherSay2Widget(data[index]);
            },
          )),
    );
  }
}
