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
        arguments: getCorrectSong(index));
  }

  String getCorrectSong(int index) {
    switch (index) {
      case 0:
        return 'mina samir0';
      case 1:
        return 'mina samir1';
      case 2:
        return 'mina samir2';
        break;
      case 3:
        return 'mina samir3';
        break;
      case 4:
        return 'mina samir4';
        break;
      case 5:
        return 'mina samir5';
        break;
      case 6:
        return 'mina samir';
        break;
      case 7:
        return 'mina samir';
        break;
      case 8:
        return 'mina samir';
        break;
      case 9:
        return 'mina samir';
        break;
      default:
        return 'Error';
        break;
    }
  }
}
