import 'package:flutter/material.dart';
import 'package:mhatb/utils/sizes.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  static const ROUTE_NAME = '/privacy-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(PRIVACY_POLICY),
      body: Container(
        margin: EDGE_ALL_25,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              getBoldText('What infromation do we collect?'),
              getSimpleText(
                  'We do not collect or ask for specific permission our application just tells our user some urgent messages.'),
              SizedBox(
                height: MARGIN_SIZE_10,
              ),
              getBoldText('What do we use your info for?'),
              getSimpleText('We never collect, send or use your data.'),
              SizedBox(
                height: MARGIN_SIZE_10,
              ),
              getBoldText('Changes to our Privacy Policy.'),
              getSimpleText(
                  'If we decide to change our Privacy Policy, we will post those changes on this page.' +
                      'This page last modified on 3/9/2019.'),
              SizedBox(
                height: MARGIN_SIZE_10,
              ),
              getBoldText('Contacting us'),
              getSimpleText(
                  'If there are any questions regarding this Privacy Policy you may contact us using the information below.\nMenaSamerCap@gmail.com \n+201228613312'),
              SizedBox(
                height: MARGIN_SIZE_10,
              ),
              RaisedButton.icon(
                color: Theme.of(context).accentColor,
                label: Text(
                  'Open Privacy Link',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(
                  Icons.link,
                  color: Colors.white,
                ),
                onPressed: _launchURL,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getSimpleText(String txt) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: FONT_SIZE_18, color: Colors.black),
    );
  }

  Widget getBoldText(String txt) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: FONT_SIZE_20,
          fontWeight: FontWeight.bold,
          color: Colors.black),
    );
  }

  void _launchURL() async {
    const url =
        'https://docs.google.com/document/d/1djU4aBYeNaYmYTERSOy5WLiYYu9LcTlyFH8_1VZr-Zk/edit?usp=sharing';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
