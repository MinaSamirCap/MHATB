import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/songs2_details_screen.dart';
import '../screens/songs1_details_screen.dart';
import '../utils/sizes.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class SongsScreen extends StatelessWidget {
  static const ROUTE_NAME = '/songs-screen';

  final List<String> data = SONGS_LIST;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar: getAppBar(SONGS),
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
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    )),
              );
            },
          )),
    );
  }

  void openSongs2DetailsScreen(BuildContext ctx, int index) {
    if (index == 1 || index == 3 || index == 0) {
      Navigator.of(ctx).pushNamed(Songs2DetailsScreen.ROUTE_NAME,
          arguments: {TITLE_KEY: data[index], BODY_KEY: getCorrectSong(index)});
      return;
    } else {
      final map = {
        TITLE_KEY: data[index],
        BODY_KEY: SO1_3_1,
        BODY2_KEY: SO1_3_2,
        BODY3_KEY: SO1_3_3
      };
      Navigator.of(ctx)
          .pushNamed(Songs1DetailsScreen.ROUTE_NAME, arguments: map);
    }
  }

  String getCorrectSong(int index) {
    switch (index) {
      case 0:
        return SO1_1_1;
      case 1:
        return SO1_2;
      case 3:
        return SO1_4;
      default:
        return 'Error';
    }
  }
}
