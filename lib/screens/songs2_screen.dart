import 'package:flutter/material.dart';
import '../screens/songs2_details_screen.dart';
import '../utils/sizes.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class Songs2Screen extends StatelessWidget {
  static const ROUTE_NAME = '/songs2-screen';

  final List<String> data = SONGS2_LIST;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(SONGS2),
      body: Container(
          width: double.infinity,
          margin: EDGE_ALL_15,
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (ctx, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: RADIUS_CIRCLE_15,
                ),
                child: ListTile(
                  onTap: () {
                    openSongs2DetailsScreen(ctx, index);
                  },
                  title: Text(
                    data[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Image.asset(
                    'assets/images/songs2.png',
                    width: 40,
                    height: 40,
                    color: Colors.black,
                  ),
                ),
              );
            },
          )),
    );
  }

  void openSongs2DetailsScreen(BuildContext ctx, int index) {
    Navigator.of(ctx).pushNamed(Songs2DetailsScreen.ROUTE_NAME,
        arguments: {TITLE_KEY: data[index], BODY_KEY: getCorrectSong(index)});
  }

  String getCorrectSong(int index) {
    switch (index) {
      case 0:
        return SO2_1;
      case 1:
        return SO2_2;
      case 2:
        return SO2_3;
      case 3:
        return SO2_4;
      case 4:
        return SO2_5;
      case 5:
        return SO2_6;
      case 6:
        return SO2_7;
      case 7:
        return SO2_8;
      case 8:
        return SO2_9;
      case 9:
        return SO2_10;
      default:
        return 'Error';
    }
  }
}
