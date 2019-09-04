import 'package:flutter/material.dart';
import 'package:mhatb/utils/sizes.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreenDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        //appBar: AppBar(title: Text('Menu'),automaticallyImplyLeading: false, backgroundColor: Theme.of(context).accentColor,),
        body: Container(
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                const Color(0xffFFFFFF),
                const Color(0xffC4647D),
                const Color(0xffC42F56),
                const Color(0xffc40a3c),
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/lgna.png',
                width: double.infinity,
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                margin: EDGE_ALL_15,
                elevation: 8,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('للتواصل والاستقسار'),
                  onTap: _launchDialBad,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _launchDialBad() async {
    const url = "tel:01225100644";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
