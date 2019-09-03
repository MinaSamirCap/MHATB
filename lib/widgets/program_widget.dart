import 'package:flutter/material.dart';
import '../utils/resources.dart';
import '../utils/sizes.dart';

class ProgramWidget extends StatelessWidget {
  final List<Map<String, String>> list;

  ProgramWidget(this.list);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EDGE_ALL_10,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (cxt, index) {
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: RADIUS_CIRCLE_15,
              ),
              elevation: 4,
              child: ListTile(
                trailing: Text(
                  list[index][TIME_KEY],
                  style: TextStyle(
                      fontSize: FONT_SIZE_16, fontWeight: FontWeight.bold),
                ),
                title: Text(
                  list[index][TITLE_KEY],
                  style: TextStyle(fontSize: FONT_SIZE_18),
                ),
                subtitle: (list[index][DETAILS_KEY].isNotEmpty)
                    ? Text(list[index][DETAILS_KEY])
                    : null,
              ));
        },
      ),
    );
  }
}
