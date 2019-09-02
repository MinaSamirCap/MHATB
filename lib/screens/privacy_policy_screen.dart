import 'package:flutter/material.dart';
import '../utils/resources.dart';
import '../utils/ui.dart';

class PrivacyPolicyScreen extends StatelessWidget {

  static const ROUTE_NAME = '/privacy-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(PRIVACY_POLICY),
    );
  }
}
