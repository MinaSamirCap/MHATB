import 'package:flutter/material.dart';
import 'package:mhatb/utils/colors.dart';
import 'package:mhatb/utils/sizes.dart';
import 'package:mhatb/widgets/father_say_widget.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class FathersSayScreen extends StatelessWidget {
  static const ROUTE_NAME = '/fathers-say-screen';

  final List<Map<String, String>> data = FATHERS_SAY_DETAILS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(FATHERS_SAY),
      body: Container(
        width: double.infinity,
        margin: EDGE_ALL_15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EDGE_ALL_15,
                decoration: BoxDecoration(
                    borderRadius: RADIUS_CIRCLE_15, color: color10),
                child: Text(
                  FATHERS_SAY_HOLY,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: FONT_SIZE_18,
                      fontWeight: FontWeight.bold),
                )),
            
            SizedBox(height: 10,),
            FatherSayWidget({
    NAME_KEY: 'القديس العظيم الانبا انطونيوس',
    QUOTE_KEY: 'اتعب نفسك في قراءة الاسفار فهي تخلصك من النجاسة',
    PIC_KEY: 'assets/images/pic1.jpg',
  }),
            // ListView.builder(
            //   itemCount: data.length,
            //   itemBuilder: (ctx, index) {
            //     return Text('Mina'); //FatherSayWidget(data[index]);
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
